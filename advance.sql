with best_selling_artist as(
	select artist.artist_id as artist_id,artist.name as artist_name,
	sum(invoice_line.unit_price * invoice_line.quantity)as total_sales
	from invoice_line
	join track on track.track_id=invoice_line.track_id
	join album on album.album_id=track.album_id
	join artist on artist.artist_id=album.artist_id
	group by 1
	order by 3 desc
	limit 1
)

select c.customer_id,c.first_name,c.last_name,bsa.artist_name,
sum(li.unit_price)
from invoice i
join customer c on c.customer_id=i.customer_id
join invoice_line li on li.invoice_id=i.invoice_id
join track t on t.track_id=li.track_id
join album alb on alb.album_id=t.album_id
join best_selling_artist bsa on bsa.artist_id=alb.artist_id
group by 1,2,3,4
order by 5 desc;

with popular_genre as
(
select count(invoice_line.quantity)as purchase,customer.country,genre.name,genre.genre_id,
row_number() over(partition by customer.country order by count(invoice_line.quantity)desc) as rowno
from invoice_line
join invoice on invoice.invoice_id=invoice_line.invoice_id
join customer on  customer.customer_id=invoice.customer_id
join track on track.track_id=invoice_line.track_id
join genre on genre.genre_id=track.genre_id
group by 2,3,4
order by 2 asc, 1 desc
)
select * from popular_genre where rowno <= 1


WITH customer_with_country AS (
    SELECT 
        customer.customer_id,
        first_name,
        last_name,
        billing_country,
        SUM(total) AS total_spending,
        ROW_NUMBER() OVER (PARTITION BY billing_country ORDER BY SUM(total) DESC) AS rowno
    FROM invoice
    JOIN customer ON customer.customer_id = invoice.customer_id
    GROUP BY customer.customer_id, first_name, last_name, billing_country
)
SELECT * 
FROM customer_with_country 
WHERE rowno <= 1;

























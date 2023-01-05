--select count(distinct category) from film_list
--select distinct category from film_list order by category
--select release_year, title from film order by release_year limit 1
--select release_year, title from film order by release_year desc limit 1
--select count(*) from rental where rental_date between '2005-07-01 00:00:00'::timestamp and '2005-08-01 23:59:59'::timestamp
--select count(*) from rental where rental_date between '2010-01-01 00:00:00'::timestamp and '2011-02-01 23:59:59'::timestamp
--select * from payment order by amount desc limit 1
--select * from customer_list where country = 'Poland' or country = 'Nigeria' or country = 'Bangladesh'
--select distinct country from staff_list
--select count(*) from staff_list where country = 'Argentina' or country = 'Spain'
--select count(*) from sales_by_film_category where total_sales > 0

-- select * from film_list where actors like '%Ellen Presley%' or actors like '%Olympia Pfeiffer%' or actors like '%Julia Zellweger%'

select distinct category from film_list where fid in (
	select film_id from inventory where inventory_id in (
		select inventory_id from rental where customer_id in (
			select id from customer_list where country = 'United States'
		)
	)
)

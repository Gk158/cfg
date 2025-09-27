select max(updated_time) from(
		select * from{{this}}
		where updated_time>dateadd(day,-7,current_date)
		qualify count(*) over (partition by updated_time::date)>2000
)
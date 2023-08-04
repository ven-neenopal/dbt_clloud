
-- Use the `ref` function to select from other models
{{
    config(materialized='view')
}}
select "Country","Industry",Sum("Number of employees") as sum_emp
from dbt_venkataprasad.data
group by "Country","Industry"
order by "Country"
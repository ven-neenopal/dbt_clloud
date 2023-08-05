
-- Use the `ref` function to select from other models
{{
    config(materialized='view')
}}
select "Country","Industry",Sum("Numberofemployees") as sum_emp
from dbt_prod.data
group by "Country","Industry"
order by "Country"

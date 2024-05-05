select year(curdate());
select *,year(curdate())-birth_year as age from actors;

select * from financials;
select *,round(revenue-budget,2) as profit from financials;

select *,revenue*77 as revenue_inr from financials where currency="USD";
select *,
if(currency="USD",revenue*77,revenue) as revenue_inr
from financials;

select distinct unit from financials;

select *,
	case
		when unit="thousands" then revenue/1000
        when unit="billions" then revenue*1000
        when unit="millions" then revenue
	end as revenue_mln
from financials;
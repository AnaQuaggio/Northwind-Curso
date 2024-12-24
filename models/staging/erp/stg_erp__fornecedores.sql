with
    renomeacao as (
        select
            cast(ID as int) as pk_fornecedor
            , cast(COMPANYNAME as varchar) as nome_fornecedor
            , cast(CITY as varchar) as cidade_forncedor
            , cast(COUNTRY as varchar) as pais_forncedor
           from {{ source('erp_northwind', 'supplier') }}                  
            )

select *
from renomeacao
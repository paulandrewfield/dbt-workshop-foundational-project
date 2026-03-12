with 

source as (

    select * from {{ source('tpch', 'nation') }}

),

renamed as (

    select
        n_nationkey AS nation_key,
        n_name AS nation,
        n_regionkey,
        n_comment

    from source

)

select * from renamed
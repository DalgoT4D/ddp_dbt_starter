{{ config(
    materialized='table',
    indexes=[
      {'columns': ['data_id'], 'type': 'hash'}
    ]
    ) }}

--WIP - direct SQL in TablePlus works but not through dbt 
--depends_on: {{ ref('unnest_json') }}

select create_jsonb_flat_view('"dbt_test".unnest_json', 'data_id', 'data')

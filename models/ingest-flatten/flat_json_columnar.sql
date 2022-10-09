
{{ config(
    materialized='table',
    indexes=[
      {'columns': ['id'], 'type': 'hash'}
    ]
    ) }}

 select id, flat_data.form_wddate,flat_data.form_co_id from {{ref('flat_json')}},  jsonb_to_record(data) AS flat_data(form_wddate date, form_co_id text)
 
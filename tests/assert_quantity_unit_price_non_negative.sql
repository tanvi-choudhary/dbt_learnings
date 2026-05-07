SELECT 
* 
from 
{{source('landing','orders')}}
WHERE unit_price < 0 or quantity < 0
select schema_name(schema_id) as [schema], 
       name
from sys.procedures
where name like '%Item%'
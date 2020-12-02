SELECT s.step_id,
       j.[name],
       s.database_name,
       s.command
FROM   msdb.dbo.sysjobsteps AS s
INNER JOIN msdb.dbo.sysjobs AS j ON  s.job_id = j.job_id
WHERE  s.command LIKE '%Stored_procedure%'
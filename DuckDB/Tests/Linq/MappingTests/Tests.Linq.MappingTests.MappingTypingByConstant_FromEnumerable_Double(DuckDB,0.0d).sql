-- DuckDB

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (VALUES
			(1,0)
		) arg(Id, "Value") ON entity.PersonID = arg.Id

-- DuckDB

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (VALUES
			(1,3147483648)
		) arg(Id, "Value") ON entity.PersonID = arg.Id


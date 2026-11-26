-- Informix.DB2 Informix
DECLARE @low VarChar(36) -- String
SET     @low = '00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- String
SET     @high = '00000000-0000-0000-0000-000000000002'

SELECT
	r.Id,
	CASE
		WHEN r."Value" BETWEEN @low::VarChar(36) AND @high::VarChar(36)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	BetweenTextRow r
WHERE
	r."Value" NOT BETWEEN @high AND @high

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Value"
FROM
	BetweenTextRow t1


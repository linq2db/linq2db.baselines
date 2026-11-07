-- YDB Ydb
UPDATE
	SetFlagTable
SET
	F = CASE
		WHEN SetFlagTable.C IS NULL THEN SetFlagTable.F
		WHEN SetFlagTable.A = SetFlagTable.B OR SetFlagTable.A IS NULL AND SetFlagTable.B IS NULL
			THEN true
		ELSE false
	END

-- YDB Ydb
SELECT
	r.F as F
FROM
	SetFlagTable r
ORDER BY
	r.Id


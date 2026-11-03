-- YDB Ydb
SELECT
	r.Plain || r.Conv as c1
FROM
	PlainAndConvertedUnicodeRow r
ORDER BY
	r.Id
LIMIT 1

-- YDB Ydb
DECLARE $read Text(6) -- String
SET     $read = 'A-x:n1'u

SELECT
	COUNT(*) as Count_1
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) = $read

-- YDB Ydb
DECLARE $read Text(6) -- String
SET     $read = 'A-x:n1'u

SELECT
	COUNT(*) as Count_1
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) <> $read

-- YDB Ydb
$CTE_1 = 	SELECT
		r.Plain || r.Conv as cte_value
	FROM
		PlainAndConvertedUnicodeRow r
;

SELECT
	CASE
		WHEN 'A-x:n1'u IN (
			SELECT
				t1.cte_value
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

-- YDB Ydb
DECLARE $Ids0_1 Text(6) -- String
SET     $Ids0_1 = 'A-x:n1'u

SELECT
	COUNT(*) as Count_1
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) IN ($Ids0_1)


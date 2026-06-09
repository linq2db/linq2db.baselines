-- YDB Ydb
DECLARE $S1 Text(2) -- String
SET     $S1 = 's1'u

INSERT INTO Projection1
(
	S1
)
VALUES
(
	$S1
)

-- YDB Ydb
DECLARE $S1 Text(2) -- String
SET     $S1 = 's1'u

INSERT INTO Projection2
(
	S1
)
VALUES
(
	$S1
)

-- YDB Ydb

$CTE_1 = 	SELECT
		projection2_1.S1 as S1
	FROM
		Projection1 t1
			LEFT JOIN Projection2 projection2_1 ON t1.S1 = projection2_1.S1
;

SELECT
	t2.S1 as S1
FROM
	$CTE_1 t2


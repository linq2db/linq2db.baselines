-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 5

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	$ID
)

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 4
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 5
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 6

SELECT
	t1.ID as ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID IN ($Ids0_1, $Ids0_2, $Ids0_3)
LIMIT 2


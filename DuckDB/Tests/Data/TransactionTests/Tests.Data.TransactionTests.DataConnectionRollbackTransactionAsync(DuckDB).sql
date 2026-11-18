BeginTransactionAsync
-- DuckDB
DECLARE $ParentID INTEGER -- Int32
SET     $ParentID = 1010
DECLARE $Value1 INTEGER -- Int32
SET     $Value1 = 1010

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	$ParentID,
	$Value1
)

RollbackTransactionAsync

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $ImplicitPropertyRW  -- Int32
SET     $ImplicitPropertyRW = 2
DECLARE $ImplicitPropertyRO  -- Int32
SET     $ImplicitPropertyRO = 11
DECLARE $Tests_Linq_InterfaceTests_IExplicitInterfaceTests  -- Int32
SET     $Tests_Linq_InterfaceTests_IExplicitInterfaceTests = 3
DECLARE $Tests_Linq_InterfaceTests_IExplicitInterfaceTest  -- Int32
SET     $Tests_Linq_InterfaceTests_IExplicitInterfaceTest = 22

INSERT INTO Issue4715Table
(
	Id,
	Prop1,
	Prop2,
	Prop3,
	Prop4
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($ImplicitPropertyRW AS INTEGER),
	CAST($ImplicitPropertyRO AS INTEGER),
	CAST($Tests_Linq_InterfaceTests_IExplicitInterfaceTests AS INTEGER),
	CAST($Tests_Linq_InterfaceTests_IExplicitInterfaceTest AS INTEGER)
)

-- DuckDB

SELECT
	t1.Id,
	t1.Prop1,
	t1.Prop3
FROM
	Issue4715Table t1
LIMIT 2


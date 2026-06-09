-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Customer_Name Text(5) -- String
SET     $Customer_Name = 'name1'u
DECLARE $CustomerOther_Name Text(5) -- String
SET     $CustomerOther_Name = 'name2'u

INSERT INTO Issue5266TableFluent
(
	Id,
	child1_name,
	child2_name
)
VALUES
(
	$Id,
	$Customer_Name,
	$CustomerOther_Name
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.child1_name as Name,
	t1.child2_name as Name_1
FROM
	Issue5266TableFluent t1
LIMIT 2


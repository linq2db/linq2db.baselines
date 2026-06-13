-- YDB Ydb
DECLARE $FirstName Text(9) -- String
SET     $FirstName = 'FirstName'u
DECLARE $Gender Text(1) -- StringFixedLength
SET     $Gender = 'F'u

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	$FirstName,
	'LastName'u,
	$Gender
)


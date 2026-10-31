-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(5) -- String
SET     $Name = 'name1'u

INSERT INTO `Names`
(
	Id,
	Name
)
VALUES
(
	$Id,
	$Name
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text(5) -- String
SET     $Name = 'name2'u

INSERT INTO `Names`
(
	Id,
	Name
)
VALUES
(
	$Id,
	$Name
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Text Text(7) -- String
SET     $Text = 'address'u

INSERT INTO Addresses
(
	Id,
	Text
)
VALUES
(
	$Id,
	$Text
)

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	after_1.Id as Id,
	after_1.Name as Name,
	arg2.Id as Id_1,
	arg2.Text as Text
FROM
	`Names` after_1
		LEFT JOIN (
			SELECT
				a1.Id as Id,
				a1.Text as Text
			FROM
				Addresses a1
			WHERE
				a1.Id = $p
		) arg2 ON after_1.Id = arg2.Id
ORDER BY
	after_1.Id


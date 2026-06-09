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

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.Text as Text
FROM
	`Names` m_1
		INNER JOIN Addresses d ON m_1.Id = d.Id
ORDER BY
	m_1.Id

-- YDB Ydb

SELECT
	after_1.Id as Item1,
	after_1.Name as Item2
FROM
	`Names` after_1
ORDER BY
	after_1.Id


-- YDB Ydb

CREATE TABLE FluentTemp_Update
(
	ID       Int32,
	`Value`  Text,
	LastName Text,

	PRIMARY KEY (ID)
)

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'John'u
DECLARE $LastName Text(3) -- String
SET     $LastName = 'Doe'u

INSERT INTO FluentTemp_Update
(
	ID,
	`Value`,
	LastName
)
VALUES
(
	$ID,
	$Name,
	$LastName
)

-- YDB Ydb
DECLARE $Name Text(7) -- String
SET     $Name = 'John II'u
DECLARE $LastName Text(4) -- String
SET     $LastName = 'Dory'u

UPDATE
	FluentTemp_Update
SET
	`Value` = $Name,
	LastName = $LastName
WHERE
	FluentTemp_Update.ID = 1

-- YDB Ydb

DROP TABLE IF EXISTS FluentTemp_Update


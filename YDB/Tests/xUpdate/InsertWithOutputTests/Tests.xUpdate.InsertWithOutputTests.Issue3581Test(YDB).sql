-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(8) -- String
SET     $Name = 'John Doe'u
DECLARE $Id_1 Text(1) -- String
SET     $Id_1 = '1'u
DECLARE $Source Text(7) -- String
SET     $Source = 'unknown'u

INSERT INTO Issue3581Table
(
	Id,
	Name,
	ExternalId,
	Source
)
VALUES
(
	$Id,
	$Name,
	$Id_1,
	$Source
)
RETURNING
	Id,
	Name,
	ExternalId,
	Source


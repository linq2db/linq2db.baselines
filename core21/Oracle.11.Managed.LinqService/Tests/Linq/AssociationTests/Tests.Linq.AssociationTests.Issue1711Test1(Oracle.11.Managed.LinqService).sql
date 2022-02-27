BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Entity1711
(
	Id Number(19) NOT NULL,

	CONSTRAINT PK_Entity1711 PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Relationship1711
(
	EntityId Number(19) NOT NULL,
	Deleted  Char(1)    NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.Id
FROM
	Entity1711 t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Relationship1711 t1
		WHERE
			t.Id = t1.EntityId
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Relationship1711

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Entity1711


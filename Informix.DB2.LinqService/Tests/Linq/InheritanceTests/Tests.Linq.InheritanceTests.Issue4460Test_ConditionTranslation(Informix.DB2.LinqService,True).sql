BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Char(1) -- StringFixedLength
SET     @IsMale = 'f'

INSERT INTO Base
(
	Code,
	Id,
	Name,
	IsMale
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer(4) -- Int32
SET     @Age = 10

INSERT INTO Base
(
	Code,
	Id,
	Name,
	Age
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	e.Code,
	e.Id,
	e.Name,
	e.IsMale,
	e.Age
FROM
	Base e
WHERE
	CASE
		WHEN e.Code = 'Child2' OR e.Code = 'Child' OR e.Code = 'BaseChild'
			THEN 't'::BOOLEAN
		WHEN e.Id = 0 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END
ORDER BY
	e.Id


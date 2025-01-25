BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Test3799Item

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Test3799Item
(
	Id       Int           NOT NULL,
	ParentId Int               NULL,
	Name     NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(4) -- String
SET     @Name = 'root'

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 1'

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 2
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 1
DECLARE @Name VarChar(7) -- String
SET     @Name = 'child 2'

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @ParentId Integer(4) -- Int32
SET     @ParentId = 5
DECLARE @Name VarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO Test3799Item
(
	Id,
	ParentId,
	Name
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Name
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Test3799Item item_1
				LEFT JOIN (
					SELECT
						a_Children.Id,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
						a_Children.ParentId
					FROM
						Test3799Item a_Children
				) t1 ON item_1.Id = t1.ParentId AND t1.rn <= 1
	) m_1
		INNER JOIN Test3799Item d ON (m_1.Id = d.ParentId OR m_1.Id IS NULL AND d.ParentId IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	item_1.Name,
	t1.Name,
	t1.Id
FROM
	Test3799Item item_1
		LEFT JOIN (
			SELECT
				a_Children.Name,
				a_Children.Id,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
				a_Children.ParentId
			FROM
				Test3799Item a_Children
		) t1 ON item_1.Id = t1.ParentId AND t1.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Test3799Item


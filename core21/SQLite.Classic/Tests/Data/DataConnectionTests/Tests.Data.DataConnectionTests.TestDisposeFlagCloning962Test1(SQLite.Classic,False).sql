BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Categories]
(
	[CategoryID]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[CategoryName] NVarChar(255)  NOT NULL,
	[Description]  NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Categories]
(
	[CategoryName],
	[Description]
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Products]
(
	[ProductID]       INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ProductName]     NVarChar(255)  NOT NULL,
	[CategoryID]      INTEGER            NULL,
	[QuantityPerUnit] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Products]
(
	[ProductName],
	[CategoryID],
	[QuantityPerUnit]
)
VALUES
('Prod 1',1,'q 1'),
('Prod 2',1,'q 2'),
('Prod 3',3,'q 3'),
('Prod 4',3,'q 4'),
('Prod 5',1,'q 5'),
('Prod 6',1,'q 6')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[lw_Category].[CategoryID],
	[detail].[ProductID],
	[detail].[ProductName],
	[detail].[CategoryID],
	[detail].[QuantityPerUnit]
FROM
	[Categories] [lw_Category]
		INNER JOIN [Products] [detail] ON [lw_Category].[CategoryID] = [detail].[CategoryID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Products]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Categories]


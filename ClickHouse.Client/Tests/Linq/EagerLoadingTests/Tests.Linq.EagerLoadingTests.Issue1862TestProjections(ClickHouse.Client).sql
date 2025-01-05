BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Blog

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Blog
(
	Id     Int32,
	Title  Nullable(String),
	Slogan Nullable(String),
	UserId Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Blog
(
	Id,
	Title,
	Slogan,
	UserId
)
VALUES
(1,'Another .NET Core Guy','Doing .NET Core Stuff','bc7b663d0fde43278f925d8cc3a11d11')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Post

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Post
(
	Id          Int32,
	BlogId      Int32,
	Title       Nullable(String),
	PostContent Nullable(String),
	IsDeleted   Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Post
(
	Id,
	BlogId,
	Title,
	PostContent,
	IsDeleted
)
VALUES
(1,1,'Post 1','Content 1 is about EF Core and Razor page',false),
(2,1,'Post 2','Content 2 is about Dapper',false),
(3,1,'Post 3','Content 3',true),
(4,1,'Post 4','Content 4',false)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Tag
(
	Id        Int32,
	Name      Nullable(String),
	IsDeleted Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Tag
(
	Id,
	Name,
	IsDeleted
)
VALUES
(1,'Razor Page',false),
(2,'EF Core',false),
(3,'Dapper',false),
(4,'Slapper Dapper',false),
(5,'SqlKata',true)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PostTag

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS PostTag
(
	Id        Int32,
	PostId    Int32,
	TagId     Int32,
	IsDeleted Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO PostTag
(
	Id,
	PostId,
	TagId,
	IsDeleted
)
VALUES
(1,1,1,false),
(2,1,2,false),
(3,2,3,false),
(4,4,5,false)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.TagId,
	a_Tag.Name
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t1.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					b.Id as Id
				FROM
					Blog b
				WHERE
					b.Id = 1
			) t1
				INNER JOIN Post d ON t1.Id = d.BlogId
	) m_1
		INNER JOIN PostTag d_1 ON m_1.Id = d_1.PostId
		INNER JOIN Tag a_Tag ON d_1.TagId = a_Tag.Id
WHERE
	NOT d_1.IsDeleted
ORDER BY
	d_1.TagId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Title,
	d.PostContent
FROM
	(
		SELECT DISTINCT
			b.Id as Id
		FROM
			Blog b
		WHERE
			b.Id = 1
	) m_1
		INNER JOIN Post d ON m_1.Id = d.BlogId
ORDER BY
	d.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	b.Id,
	b.Title
FROM
	Blog b
WHERE
	b.Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS PostTag

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Tag

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Post

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Blog


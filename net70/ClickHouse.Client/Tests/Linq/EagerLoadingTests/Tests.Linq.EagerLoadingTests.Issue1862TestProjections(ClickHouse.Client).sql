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
(toInt32(1),'Another .NET Core Guy','Doing .NET Core Stuff','bc7b663d0fde43278f925d8cc3a11d11')

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
(toInt32(1),toInt32(1),'Post 1','Content 1 is about EF Core and Razor page',false),
(toInt32(2),toInt32(1),'Post 2','Content 2 is about Dapper',false),
(toInt32(3),toInt32(1),'Post 3','Content 3',true),
(toInt32(4),toInt32(1),'Post 4','Content 4',false)

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
(toInt32(1),'Razor Page',false),
(toInt32(2),'EF Core',false),
(toInt32(3),'Dapper',false),
(toInt32(4),'Slapper Dapper',false),
(toInt32(5),'SqlKata',true)

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
(toInt32(1),toInt32(1),toInt32(1),false),
(toInt32(2),toInt32(1),toInt32(2),false),
(toInt32(3),toInt32(2),toInt32(3),false),
(toInt32(4),toInt32(4),toInt32(5),false)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result_1.Id,
	key_data_result_1.BlogId,
	key_data_result_1.Title,
	key_data_result_1.PostContent,
	key_data_result_1.IsDeleted,
	key_data_result_1.Id_1,
	key_data_result_1.Title_1,
	key_data_result_1.Slogan,
	key_data_result_1.UserId,
	detail_1.TagId,
	a_Tag.Name
FROM
	(
		SELECT DISTINCT
			detail.Id as Id,
			detail.BlogId as BlogId,
			detail.Title as Title,
			detail.PostContent as PostContent,
			detail.IsDeleted as IsDeleted,
			key_data_result.Id as Id_1,
			key_data_result.Title as Title_1,
			key_data_result.Slogan as Slogan,
			key_data_result.UserId as UserId
		FROM
			(
				SELECT DISTINCT
					b.Id as Id,
					b.Title as Title,
					b.Slogan as Slogan,
					b.UserId as UserId
				FROM
					Blog b
				WHERE
					b.Id = toInt32(1)
			) key_data_result
				INNER JOIN Post detail ON key_data_result.Id = detail.BlogId
	) key_data_result_1
		INNER JOIN PostTag detail_1 ON key_data_result_1.Id = detail_1.PostId AND detail_1.IsDeleted = false
		INNER JOIN Tag a_Tag ON detail_1.TagId = a_Tag.Id
ORDER BY
	detail_1.TagId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.Id,
	key_data_result.Title,
	key_data_result.Slogan,
	key_data_result.UserId,
	detail.Id,
	detail.Title,
	detail.PostContent,
	detail.BlogId,
	detail.IsDeleted
FROM
	(
		SELECT DISTINCT
			b.Id as Id,
			b.Title as Title,
			b.Slogan as Slogan,
			b.UserId as UserId
		FROM
			Blog b
		WHERE
			b.Id = toInt32(1)
	) key_data_result
		INNER JOIN Post detail ON key_data_result.Id = detail.BlogId
ORDER BY
	detail.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	b.Id,
	b.Title,
	b.Slogan,
	b.UserId
FROM
	Blog b
WHERE
	b.Id = toInt32(1)

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


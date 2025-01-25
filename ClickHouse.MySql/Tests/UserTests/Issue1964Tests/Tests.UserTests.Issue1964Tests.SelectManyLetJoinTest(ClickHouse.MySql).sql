BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Attachment

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Attachment
(
	Id          Int32,
	Type        Int32,
	ItemId      Int32,
	Name        String,
	ContentType String,
	Url         String,
	Status      Int32,
	CreateTime  DateTime64(7),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BranchInfo

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS BranchInfo
(
	BranchId         Int32,
	BranchCode       String,
	BranchName       String,
	BranchParentCode String,
	CompanyCode      String,
	AreaCode         String,
	BranchAddress    String,
	BrandContacts    String,
	BrandPhone       String,
	Status           Int32,
	CreateTime       DateTime64(7),
	CreateUser       String,
	LastUpdateTime   DateTime64(7),
	LastUpdateUser   String,
	BusinessHours    String,
	PointX           Decimal128(10),
	PointY           Decimal128(10),
	BranchIsShow     Int32,
	BranchType       Int32,

	PRIMARY KEY (BranchId)
)
ENGINE = MergeTree()
ORDER BY BranchId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.BranchAddress,
	m_1.BranchId,
	m_1.BranchName,
	m_1.BusinessHours,
	m_1.PointX,
	m_1.PointY,
	att.Url
FROM
	BranchInfo m_1
		LEFT JOIN (
			SELECT
				ROW_NUMBER() OVER(PARTITION BY temp_1.ItemId ORDER BY temp_1.CreateTime) as Index_1,
				temp_1.ItemId as ItemId,
				temp_1.Url as Url
			FROM
				Attachment temp_1
			WHERE
				temp_1.Status = 0 AND temp_1.Type = 2
		) att ON att.ItemId = m_1.BranchId AND att.Index_1 = toInt64(1)
WHERE
	m_1.Status = 0 AND m_1.BranchIsShow = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BranchInfo

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Attachment


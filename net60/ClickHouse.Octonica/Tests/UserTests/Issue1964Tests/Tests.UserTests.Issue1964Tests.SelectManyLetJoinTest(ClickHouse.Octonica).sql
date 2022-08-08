﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Attachment

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BranchInfo

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.BranchAddress,
	m_1.BranchId,
	m_1.BranchName,
	m_1.BusinessHours,
	m_1.PointX,
	m_1.PointY,
	t1.Url
FROM
	BranchInfo m_1
		LEFT JOIN (
			SELECT
				att.ItemId as ItemId,
				att.Url as Url
			FROM
				(
					SELECT
						ROW_NUMBER() OVER(PARTITION BY temp_1.ItemId ORDER BY temp_1.CreateTime) as Index_1,
						temp_1.ItemId as ItemId,
						temp_1.Url as Url
					FROM
						Attachment temp_1
					WHERE
						temp_1.Status = toInt32(0) AND temp_1.Type = toInt32(2)
				) att
			WHERE
				att.Index_1 = toInt64(1)
		) t1 ON t1.ItemId = m_1.BranchId
WHERE
	m_1.BranchIsShow = toInt32(0) AND m_1.Status = toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BranchInfo

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Attachment


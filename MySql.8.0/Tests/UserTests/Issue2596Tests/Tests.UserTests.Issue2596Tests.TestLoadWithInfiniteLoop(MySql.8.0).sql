BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PriceList`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `PriceList`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_PriceList` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Product`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Product`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Product` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AccessTariff`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `AccessTariff`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_AccessTariff` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CountryState`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CountryState`
(
	`Id`                    INT AUTO_INCREMENT NOT NULL,
	`CountryId`             INT                NOT NULL,
	`AutonomousCommunityId` INT                    NULL,

	CONSTRAINT `PK_CountryState` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AutonomousCommunity`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `AutonomousCommunity`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_AutonomousCommunity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Country`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Country`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Country` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvoicePendingState`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `InvoicePendingState`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_InvoicePendingState` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TypeBMeasures`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TypeBMeasures`
(
	`Id`              INT AUTO_INCREMENT NOT NULL,
	`CustomInvoiceId` INT                NOT NULL,

	CONSTRAINT `PK_TypeBMeasures` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Town`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Town`
(
	`Id`      INT AUTO_INCREMENT NOT NULL,
	`StateId` INT                    NULL,

	CONSTRAINT `PK_Town` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvoiceLine`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `InvoiceLine`
(
	`Id`            INT AUTO_INCREMENT NOT NULL,
	`ProductUnitId` INT                    NULL,
	`InvoiceId`     INT                    NULL,
	`ProductId`     INT                    NULL,

	CONSTRAINT `PK_InvoiceLine` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AccountTax`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `AccountTax`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_AccountTax` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvoiceTaxLine`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `InvoiceTaxLine`
(
	`Id`        INT AUTO_INCREMENT NOT NULL,
	`InvoiceId` INT                    NULL,
	`TaxId`     INT                    NULL,

	CONSTRAINT `PK_InvoiceTaxLine` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Invoice`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Invoice`
(
	`Id`                  INT AUTO_INCREMENT NOT NULL,
	`PendingStateId`      INT                    NULL,
	`RectifyingInvoiceId` INT                    NULL,
	`RefundByInvoiceId`   INT                    NULL,

	CONSTRAINT `PK_Invoice` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MeasureSource`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `MeasureSource`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_MeasureSource` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TypeAMeasures`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TypeAMeasures`
(
	`Id`               INT AUTO_INCREMENT NOT NULL,
	`CustomInvoiceId`  INT                NOT NULL,
	`MeasuresSourceId` INT                NOT NULL,
	`PreviousSourceId` INT                NOT NULL,

	CONSTRAINT `PK_TypeAMeasures` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `StreetType`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `StreetType`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_StreetType` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ServicePoint`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `ServicePoint`
(
	`Id`           INT AUTO_INCREMENT NOT NULL,
	`TownId`       INT                NOT NULL,
	`StreetTypeId` INT                NOT NULL,

	CONSTRAINT `PK_ServicePoint` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ProductUnit`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `ProductUnit`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_ProductUnit` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Contract`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Contract`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Contract` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CustomInvoice`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CustomInvoice`
(
	`Id`             INT AUTO_INCREMENT NOT NULL,
	`ContractId`     INT                NOT NULL,
	`InvoiceId`      INT                NOT NULL,
	`ServicePointId` INT                NOT NULL,
	`AccessTariffId` INT                NOT NULL,
	`PriceListId`    INT                NOT NULL,

	CONSTRAINT `PK_CustomInvoice` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CustomInvoiceLine`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CustomInvoiceLine`
(
	`Id`              INT AUTO_INCREMENT NOT NULL,
	`CustomInvoiceId` INT                NOT NULL,

	CONSTRAINT `PK_CustomInvoiceLine` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`ProductUnitId`,
	`d`.`InvoiceId`,
	`d`.`ProductId`,
	`a_ProductUnit`.`Id`,
	`a_Product`.`Id`
FROM
	(
		SELECT DISTINCT
			`a_Invoice`.`Id`
		FROM
			`CustomInvoice` `f`
				INNER JOIN `Invoice` `a_Invoice` ON `f`.`InvoiceId` = `a_Invoice`.`Id`
				INNER JOIN `Contract` `a_Contract` ON `f`.`ContractId` = `a_Contract`.`Id`
				INNER JOIN `AccessTariff` `a_AccessTariff` ON `f`.`AccessTariffId` = `a_AccessTariff`.`Id`
				INNER JOIN `ServicePoint` `a_ServicePoint` ON `f`.`ServicePointId` = `a_ServicePoint`.`Id`
		WHERE
			`f`.`Id` = 1
	) `m_1`
		INNER JOIN `InvoiceLine` `d` ON `m_1`.`Id` = `d`.`InvoiceId` AND `d`.`InvoiceId` IS NOT NULL
		LEFT JOIN `ProductUnit` `a_ProductUnit` ON `d`.`ProductUnitId` = `a_ProductUnit`.`Id` AND `d`.`ProductUnitId` IS NOT NULL
		LEFT JOIN `Product` `a_Product` ON `d`.`ProductId` = `a_Product`.`Id` AND `d`.`ProductId` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`InvoiceId`,
	`d`.`TaxId`,
	`a_Tax`.`Id`
FROM
	(
		SELECT DISTINCT
			`a_Invoice`.`Id`
		FROM
			`CustomInvoice` `f`
				INNER JOIN `Invoice` `a_Invoice` ON `f`.`InvoiceId` = `a_Invoice`.`Id`
				INNER JOIN `Contract` `a_Contract` ON `f`.`ContractId` = `a_Contract`.`Id`
				INNER JOIN `AccessTariff` `a_AccessTariff` ON `f`.`AccessTariffId` = `a_AccessTariff`.`Id`
				INNER JOIN `ServicePoint` `a_ServicePoint` ON `f`.`ServicePointId` = `a_ServicePoint`.`Id`
		WHERE
			`f`.`Id` = 1
	) `m_1`
		INNER JOIN `InvoiceTaxLine` `d` ON `m_1`.`Id` = `d`.`InvoiceId` AND `d`.`InvoiceId` IS NOT NULL
		INNER JOIN `AccountTax` `a_Tax` ON `d`.`TaxId` = `a_Tax`.`Id` AND `d`.`TaxId` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`CustomInvoiceId`
FROM
	(
		SELECT DISTINCT
			`f`.`Id`
		FROM
			`CustomInvoice` `f`
				INNER JOIN `Invoice` `a_Invoice` ON `f`.`InvoiceId` = `a_Invoice`.`Id`
				INNER JOIN `Contract` `a_Contract` ON `f`.`ContractId` = `a_Contract`.`Id`
				INNER JOIN `AccessTariff` `a_AccessTariff` ON `f`.`AccessTariffId` = `a_AccessTariff`.`Id`
				INNER JOIN `ServicePoint` `a_ServicePoint` ON `f`.`ServicePointId` = `a_ServicePoint`.`Id`
		WHERE
			`f`.`Id` = 1
	) `m_1`
		INNER JOIN `CustomInvoiceLine` `d` ON `m_1`.`Id` = `d`.`CustomInvoiceId`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`CustomInvoiceId`,
	`d`.`MeasuresSourceId`,
	`d`.`PreviousSourceId`,
	`a_Source`.`Id`,
	`a_PreviousSource`.`Id`
FROM
	(
		SELECT DISTINCT
			`f`.`Id`
		FROM
			`CustomInvoice` `f`
				INNER JOIN `Invoice` `a_Invoice` ON `f`.`InvoiceId` = `a_Invoice`.`Id`
				INNER JOIN `Contract` `a_Contract` ON `f`.`ContractId` = `a_Contract`.`Id`
				INNER JOIN `AccessTariff` `a_AccessTariff` ON `f`.`AccessTariffId` = `a_AccessTariff`.`Id`
				INNER JOIN `ServicePoint` `a_ServicePoint` ON `f`.`ServicePointId` = `a_ServicePoint`.`Id`
		WHERE
			`f`.`Id` = 1
	) `m_1`
		INNER JOIN `TypeAMeasures` `d` ON `m_1`.`Id` = `d`.`CustomInvoiceId`
		LEFT JOIN `MeasureSource` `a_Source` ON `d`.`MeasuresSourceId` = `a_Source`.`Id`
		LEFT JOIN `MeasureSource` `a_PreviousSource` ON `d`.`PreviousSourceId` = `a_PreviousSource`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`CustomInvoiceId`
FROM
	(
		SELECT DISTINCT
			`f`.`Id`
		FROM
			`CustomInvoice` `f`
				INNER JOIN `Invoice` `a_Invoice` ON `f`.`InvoiceId` = `a_Invoice`.`Id`
				INNER JOIN `Contract` `a_Contract` ON `f`.`ContractId` = `a_Contract`.`Id`
				INNER JOIN `AccessTariff` `a_AccessTariff` ON `f`.`AccessTariffId` = `a_AccessTariff`.`Id`
				INNER JOIN `ServicePoint` `a_ServicePoint` ON `f`.`ServicePointId` = `a_ServicePoint`.`Id`
		WHERE
			`f`.`Id` = 1
	) `m_1`
		INNER JOIN `TypeBMeasures` `d` ON `m_1`.`Id` = `d`.`CustomInvoiceId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`f`.`Id`,
	`f`.`ContractId`,
	`f`.`InvoiceId`,
	`f`.`ServicePointId`,
	`f`.`AccessTariffId`,
	`f`.`PriceListId`,
	`a_Invoice`.`Id`,
	`a_Invoice`.`PendingStateId`,
	`a_Invoice`.`RectifyingInvoiceId`,
	`a_Invoice`.`RefundByInvoiceId`,
	`a_Rectifying`.`Id`,
	`a_Rectifying`.`PendingStateId`,
	`a_Rectifying`.`RectifyingInvoiceId`,
	`a_Rectifying`.`RefundByInvoiceId`,
	`a_RefundBy`.`Id`,
	`a_RefundBy`.`PendingStateId`,
	`a_RefundBy`.`RectifyingInvoiceId`,
	`a_RefundBy`.`RefundByInvoiceId`,
	`a_PendingState`.`Id`,
	`a_Invoice`.`Id`,
	`a_Contract`.`Id`,
	`a_AccessTariff`.`Id`,
	`a_ServicePoint`.`Id`,
	`a_ServicePoint`.`TownId`,
	`a_ServicePoint`.`StreetTypeId`,
	`a_Town`.`Id`,
	`a_Town`.`StateId`,
	`a_State`.`Id`,
	`a_State`.`CountryId`,
	`a_State`.`AutonomousCommunityId`,
	`a_Community`.`Id`,
	`a_StreetType`.`Id`,
	`f`.`Id`,
	`a_PriceList`.`Id`
FROM
	`CustomInvoice` `f`
		INNER JOIN `Invoice` `a_Invoice` ON `f`.`InvoiceId` = `a_Invoice`.`Id`
		LEFT JOIN `Invoice` `a_Rectifying` ON `a_Invoice`.`RectifyingInvoiceId` = `a_Rectifying`.`Id` AND `a_Invoice`.`RectifyingInvoiceId` IS NOT NULL
		LEFT JOIN `Invoice` `a_RefundBy` ON `a_Invoice`.`RefundByInvoiceId` = `a_RefundBy`.`Id` AND `a_Invoice`.`RefundByInvoiceId` IS NOT NULL
		LEFT JOIN `InvoicePendingState` `a_PendingState` ON `a_Invoice`.`PendingStateId` = `a_PendingState`.`Id` AND `a_Invoice`.`PendingStateId` IS NOT NULL
		INNER JOIN `Contract` `a_Contract` ON `f`.`ContractId` = `a_Contract`.`Id`
		INNER JOIN `AccessTariff` `a_AccessTariff` ON `f`.`AccessTariffId` = `a_AccessTariff`.`Id`
		INNER JOIN `ServicePoint` `a_ServicePoint` ON `f`.`ServicePointId` = `a_ServicePoint`.`Id`
		LEFT JOIN `Town` `a_Town` ON `a_ServicePoint`.`TownId` = `a_Town`.`Id`
		LEFT JOIN `CountryState` `a_State` ON `a_Town`.`StateId` = `a_State`.`Id` AND `a_Town`.`StateId` IS NOT NULL
		LEFT JOIN `AutonomousCommunity` `a_Community` ON `a_State`.`AutonomousCommunityId` = `a_Community`.`Id` AND `a_State`.`AutonomousCommunityId` IS NOT NULL
		LEFT JOIN `StreetType` `a_StreetType` ON `a_ServicePoint`.`StreetTypeId` = `a_StreetType`.`Id`
		LEFT JOIN `PriceList` `a_PriceList` ON `f`.`PriceListId` = `a_PriceList`.`Id`
WHERE
	`f`.`Id` = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CustomInvoiceLine`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CustomInvoice`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Contract`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ProductUnit`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ServicePoint`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `StreetType`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TypeAMeasures`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MeasureSource`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Invoice`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvoiceTaxLine`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AccountTax`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvoiceLine`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Town`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TypeBMeasures`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InvoicePendingState`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Country`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AutonomousCommunity`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CountryState`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `AccessTariff`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Product`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PriceList`


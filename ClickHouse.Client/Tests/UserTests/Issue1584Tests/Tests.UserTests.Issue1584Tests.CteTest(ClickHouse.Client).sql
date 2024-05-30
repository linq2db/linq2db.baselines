﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateEntry

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS RateEntry
(
	TI_PK                                UUID,
	TI_LineOrder                         Int16,
	TI_RateStartDate                     DateTime64(7),
	TI_RateEndDate                       Nullable(DateTime64(7)),
	TI_RX_NKCurrency                     Nullable(String),
	TI_Frequency                         Int32,
	TI_OH_Supplier                       Nullable(UUID),
	TI_OH_TransportProvider              Nullable(UUID),
	TI_OH_Consignor                      Nullable(UUID),
	TI_OH_Consignee                      Nullable(UUID),
	TI_OA_CartagePickupAddressOverride   Nullable(UUID),
	TI_OA_CartageDeliveryAddressOverride Nullable(UUID),
	TI_CartagePickupAddressPostCode      Nullable(String),
	TI_CartageDeliveryAddressPostCode    Nullable(String),
	TI_RS_NKServiceLevel_NI              Nullable(String),
	TI_OriginLRC                         Nullable(String),
	TI_DestinationLRC                    Nullable(String),
	TI_ViaLRC                            Nullable(String),
	TI_PageHeading                       Nullable(String),
	TI_PageOpeningText                   Nullable(String),
	TI_PageClosingText                   Nullable(String),
	TI_OH_AgentOverride                  Nullable(UUID),
	TI_ParentID                          Nullable(UUID),
	TI_QuotePageIncoTerm                 Nullable(String),
	TI_BuyersConsolRateMode              Nullable(String),
	TI_SystemCreateTimeUtc               Nullable(DateTime64(7)),
	TI_SystemCreateUser                  Nullable(String),
	TI_SystemLastEditTimeUtc             Nullable(DateTime64(7)),
	TI_SystemLastEditUser                Nullable(String),
	TI_TH                                UUID,
	TI_RC                                Nullable(UUID),
	TI_ContractNumber                    Nullable(String),
	TI_PL_NKCarrierServiceLevel          Nullable(String),
	TI_TZ_OriginZone                     Nullable(UUID),
	TI_TZ_DestinationZone                Nullable(UUID),
	TI_IsValid                           Bool,
	TI_IsCrossTrade                      Bool,
	TI_DataChecked                       Bool,
	TI_MatchContainerRateClass           Bool,
	TI_TransitTime                       Nullable(String),
	TI_FrequencyUnit                     Nullable(String),
	TI_Mode                              Nullable(String),
	TI_RH_NKCommodityCode                Nullable(String),
	TI_RateCategory                      Nullable(String),
	TI_FromID                            Nullable(UUID),
	TI_FromTableCode                     Nullable(String),
	TI_ToId                              Nullable(UUID),
	TI_ToTableCode                       Nullable(String),
	TI_OH_ControllingCustomer            Nullable(UUID),
	TI_GC_Publisher                      UUID,
	TI_IsTact                            Bool,
	TI_ParentTableCode                   Nullable(String),
	TI_RateKey                           Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateLines

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS RateLines
(
	TL_PK UUID,
	TL_TI UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateLineItem

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS RateLineItem
(
	TM_PK        UUID,
	TM_LineOrder UInt8,
	TM_Type      Nullable(String),
	TM_Value     Decimal128(10),
	TM_TL        UUID
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH rateCost AS
(
	SELECT
		s.TI_PK as RateEntry_TI_PK,
		s.TI_LineOrder as RateEntry_TI_LineOrder,
		s.TI_RateStartDate as RateEntry_TI_RateStartDate,
		s.TI_RateEndDate as RateEntry_TI_RateEndDate,
		s.TI_RX_NKCurrency as RateEntry_TI_RX_NKCurrency,
		s.TI_Frequency as RateEntry_TI_Frequency,
		s.TI_OH_Supplier as RateEntry_TI_OH_Supplier,
		s.TI_OH_TransportProvider as RateEntry_TI_OH_TransportProvider,
		s.TI_OH_Consignor as RateEntry_TI_OH_Consignor,
		s.TI_OH_Consignee as RateEntry_TI_OH_Consignee,
		s.TI_OA_CartagePickupAddressOverride as RateEntry_TI_OA_CartagePickupAddressOverride,
		s.TI_OA_CartageDeliveryAddressOverride as RateEntry_TI_OA_CartageDeliveryAddressOverride,
		s.TI_CartagePickupAddressPostCode as RateEntry_TI_CartagePickupAddressPostCode,
		s.TI_CartageDeliveryAddressPostCode as RateEntry_TI_CartageDeliveryAddressPostCode,
		s.TI_RS_NKServiceLevel_NI as RateEntry_TI_RS_NKServiceLevel_NI,
		s.TI_OriginLRC as RateEntry_TI_OriginLRC,
		s.TI_DestinationLRC as RateEntry_TI_DestinationLRC,
		s.TI_ViaLRC as RateEntry_TI_ViaLRC,
		s.TI_PageHeading as RateEntry_TI_PageHeading,
		s.TI_PageOpeningText as RateEntry_TI_PageOpeningText,
		s.TI_PageClosingText as RateEntry_TI_PageClosingText,
		s.TI_OH_AgentOverride as RateEntry_TI_OH_AgentOverride,
		s.TI_ParentID as RateEntry_TI_ParentID,
		s.TI_QuotePageIncoTerm as RateEntry_TI_QuotePageIncoTerm,
		s.TI_BuyersConsolRateMode as RateEntry_TI_BuyersConsolRateMode,
		s.TI_SystemCreateTimeUtc as RateEntry_TI_SystemCreateTimeUtc,
		s.TI_SystemCreateUser as RateEntry_TI_SystemCreateUser,
		s.TI_SystemLastEditTimeUtc as RateEntry_TI_SystemLastEditTimeUtc,
		s.TI_SystemLastEditUser as RateEntry_TI_SystemLastEditUser,
		s.TI_TH as RateEntry_TI_TH,
		s.TI_RC as RateEntry_TI_RC,
		s.TI_ContractNumber as RateEntry_TI_ContractNumber,
		s.TI_PL_NKCarrierServiceLevel as RateEntry_TI_PL_NKCarrierServiceLevel,
		s.TI_TZ_OriginZone as RateEntry_TI_TZ_OriginZone,
		s.TI_TZ_DestinationZone as RateEntry_TI_TZ_DestinationZone,
		s.TI_IsValid as RateEntry_TI_IsValid,
		s.TI_IsCrossTrade as RateEntry_TI_IsCrossTrade,
		s.TI_DataChecked as RateEntry_TI_DataChecked,
		s.TI_MatchContainerRateClass as RateEntry_TI_MatchContainerRateClass,
		s.TI_TransitTime as RateEntry_TI_TransitTime,
		s.TI_FrequencyUnit as RateEntry_TI_FrequencyUnit,
		s.TI_Mode as RateEntry_TI_Mode,
		s.TI_RH_NKCommodityCode as RateEntry_TI_RH_NKCommodityCode,
		s.TI_RateCategory as RateEntry_TI_RateCategory,
		s.TI_FromID as RateEntry_TI_FromID,
		s.TI_FromTableCode as RateEntry_TI_FromTableCode,
		s.TI_ToId as RateEntry_TI_ToId,
		s.TI_ToTableCode as RateEntry_TI_ToTableCode,
		s.TI_OH_ControllingCustomer as RateEntry_TI_OH_ControllingCustomer,
		s.TI_GC_Publisher as RateEntry_TI_GC_Publisher,
		s.TI_IsTact as RateEntry_TI_IsTact,
		s.TI_ParentTableCode as RateEntry_TI_ParentTableCode,
		s.TI_RateKey as RateEntry_TI_RateKey,
		sumOrNull(CASE
			WHEN rateLineItem_1.TM_Type IN ('FLT', 'BAS') THEN rateLineItem_1.TM_Value
			ELSE toDecimal64('0', 10)
		END) as FlatRate,
		sumOrNull(CASE
			WHEN rateLineItem_1.TM_Type = 'MIN' THEN rateLineItem_1.TM_Value
			ELSE toDecimal64('0', 10)
		END) as MinRate,
		sumOrNull(CASE
			WHEN rateLineItem_1.TM_Type = 'UNT' THEN rateLineItem_1.TM_Value
			ELSE toDecimal64('0', 10)
		END) as VariableRate
	FROM
		RateEntry s
			LEFT JOIN RateLines rateLine ON rateLine.TL_TI = s.TI_PK
			LEFT JOIN RateLineItem rateLineItem_1 ON rateLineItem_1.TM_TL = rateLine.TL_PK
	WHERE
		(s.TI_RateEndDate IS NULL OR s.TI_RateEndDate > now()) AND
		rateLineItem_1.TM_Type IN ('MIN', 'FLT', 'BAS', 'UNT')
	GROUP BY
		s.TI_PK,
		s.TI_LineOrder,
		s.TI_RateStartDate,
		s.TI_RateEndDate,
		s.TI_RX_NKCurrency,
		s.TI_Frequency,
		s.TI_OH_Supplier,
		s.TI_OH_TransportProvider,
		s.TI_OH_Consignor,
		s.TI_OH_Consignee,
		s.TI_OA_CartagePickupAddressOverride,
		s.TI_OA_CartageDeliveryAddressOverride,
		s.TI_CartagePickupAddressPostCode,
		s.TI_CartageDeliveryAddressPostCode,
		s.TI_RS_NKServiceLevel_NI,
		s.TI_OriginLRC,
		s.TI_DestinationLRC,
		s.TI_ViaLRC,
		s.TI_PageHeading,
		s.TI_PageOpeningText,
		s.TI_PageClosingText,
		s.TI_OH_AgentOverride,
		s.TI_ParentID,
		s.TI_QuotePageIncoTerm,
		s.TI_BuyersConsolRateMode,
		s.TI_SystemCreateTimeUtc,
		s.TI_SystemCreateUser,
		s.TI_SystemLastEditTimeUtc,
		s.TI_SystemLastEditUser,
		s.TI_TH,
		s.TI_RC,
		s.TI_ContractNumber,
		s.TI_PL_NKCarrierServiceLevel,
		s.TI_TZ_OriginZone,
		s.TI_TZ_DestinationZone,
		s.TI_IsValid,
		s.TI_IsCrossTrade,
		s.TI_DataChecked,
		s.TI_MatchContainerRateClass,
		s.TI_TransitTime,
		s.TI_FrequencyUnit,
		s.TI_Mode,
		s.TI_RH_NKCommodityCode,
		s.TI_RateCategory,
		s.TI_FromID,
		s.TI_FromTableCode,
		s.TI_ToId,
		s.TI_ToTableCode,
		s.TI_OH_ControllingCustomer,
		s.TI_GC_Publisher,
		s.TI_IsTact,
		s.TI_ParentTableCode,
		s.TI_RateKey
)
SELECT
	rateEntry_1.TI_PK,
	rateEntry_1.TI_LineOrder,
	rateEntry_1.TI_RateStartDate,
	rateEntry_1.TI_RateEndDate,
	rateEntry_1.TI_RX_NKCurrency,
	rateEntry_1.TI_Frequency,
	rateEntry_1.TI_OH_Supplier,
	rateEntry_1.TI_OH_TransportProvider,
	rateEntry_1.TI_OH_Consignor,
	rateEntry_1.TI_OH_Consignee,
	rateEntry_1.TI_OA_CartagePickupAddressOverride,
	rateEntry_1.TI_OA_CartageDeliveryAddressOverride,
	rateEntry_1.TI_CartagePickupAddressPostCode,
	rateEntry_1.TI_CartageDeliveryAddressPostCode,
	rateEntry_1.TI_RS_NKServiceLevel_NI,
	rateEntry_1.TI_OriginLRC,
	rateEntry_1.TI_DestinationLRC,
	rateEntry_1.TI_ViaLRC,
	rateEntry_1.TI_PageHeading,
	rateEntry_1.TI_PageOpeningText,
	rateEntry_1.TI_PageClosingText,
	rateEntry_1.TI_OH_AgentOverride,
	rateEntry_1.TI_ParentID,
	rateEntry_1.TI_QuotePageIncoTerm,
	rateEntry_1.TI_BuyersConsolRateMode,
	rateEntry_1.TI_SystemCreateTimeUtc,
	rateEntry_1.TI_SystemCreateUser,
	rateEntry_1.TI_SystemLastEditTimeUtc,
	rateEntry_1.TI_SystemLastEditUser,
	rateEntry_1.TI_TH,
	rateEntry_1.TI_RC,
	rateEntry_1.TI_ContractNumber,
	rateEntry_1.TI_PL_NKCarrierServiceLevel,
	rateEntry_1.TI_TZ_OriginZone,
	rateEntry_1.TI_TZ_DestinationZone,
	rateEntry_1.TI_IsValid,
	rateEntry_1.TI_IsCrossTrade,
	rateEntry_1.TI_DataChecked,
	rateEntry_1.TI_MatchContainerRateClass,
	rateEntry_1.TI_TransitTime,
	rateEntry_1.TI_FrequencyUnit,
	rateEntry_1.TI_Mode,
	rateEntry_1.TI_RH_NKCommodityCode,
	rateEntry_1.TI_RateCategory,
	rateEntry_1.TI_FromID,
	rateEntry_1.TI_FromTableCode,
	rateEntry_1.TI_ToId,
	rateEntry_1.TI_ToTableCode,
	rateEntry_1.TI_OH_ControllingCustomer,
	rateEntry_1.TI_GC_Publisher,
	rateEntry_1.TI_IsTact,
	rateEntry_1.TI_ParentTableCode,
	rateEntry_1.TI_RateKey,
	c_1.RateEntry_TI_PK,
	c_1.RateEntry_TI_LineOrder,
	c_1.RateEntry_TI_RateStartDate,
	c_1.RateEntry_TI_RateEndDate,
	c_1.RateEntry_TI_RX_NKCurrency,
	c_1.RateEntry_TI_Frequency,
	c_1.RateEntry_TI_OH_Supplier,
	c_1.RateEntry_TI_OH_TransportProvider,
	c_1.RateEntry_TI_OH_Consignor,
	c_1.RateEntry_TI_OH_Consignee,
	c_1.RateEntry_TI_OA_CartagePickupAddressOverride,
	c_1.RateEntry_TI_OA_CartageDeliveryAddressOverride,
	c_1.RateEntry_TI_CartagePickupAddressPostCode,
	c_1.RateEntry_TI_CartageDeliveryAddressPostCode,
	c_1.RateEntry_TI_RS_NKServiceLevel_NI,
	c_1.RateEntry_TI_OriginLRC,
	c_1.RateEntry_TI_DestinationLRC,
	c_1.RateEntry_TI_ViaLRC,
	c_1.RateEntry_TI_PageHeading,
	c_1.RateEntry_TI_PageOpeningText,
	c_1.RateEntry_TI_PageClosingText,
	c_1.RateEntry_TI_OH_AgentOverride,
	c_1.RateEntry_TI_ParentID,
	c_1.RateEntry_TI_QuotePageIncoTerm,
	c_1.RateEntry_TI_BuyersConsolRateMode,
	c_1.RateEntry_TI_SystemCreateTimeUtc,
	c_1.RateEntry_TI_SystemCreateUser,
	c_1.RateEntry_TI_SystemLastEditTimeUtc,
	c_1.RateEntry_TI_SystemLastEditUser,
	c_1.RateEntry_TI_TH,
	c_1.RateEntry_TI_RC,
	c_1.RateEntry_TI_ContractNumber,
	c_1.RateEntry_TI_PL_NKCarrierServiceLevel,
	c_1.RateEntry_TI_TZ_OriginZone,
	c_1.RateEntry_TI_TZ_DestinationZone,
	c_1.RateEntry_TI_IsValid,
	c_1.RateEntry_TI_IsCrossTrade,
	c_1.RateEntry_TI_DataChecked,
	c_1.RateEntry_TI_MatchContainerRateClass,
	c_1.RateEntry_TI_TransitTime,
	c_1.RateEntry_TI_FrequencyUnit,
	c_1.RateEntry_TI_Mode,
	c_1.RateEntry_TI_RH_NKCommodityCode,
	c_1.RateEntry_TI_RateCategory,
	c_1.RateEntry_TI_FromID,
	c_1.RateEntry_TI_FromTableCode,
	c_1.RateEntry_TI_ToId,
	c_1.RateEntry_TI_ToTableCode,
	c_1.RateEntry_TI_OH_ControllingCustomer,
	c_1.RateEntry_TI_GC_Publisher,
	c_1.RateEntry_TI_IsTact,
	c_1.RateEntry_TI_ParentTableCode,
	c_1.RateEntry_TI_RateKey,
	c_1.FlatRate,
	c_1.MinRate,
	c_1.VariableRate
FROM
	RateEntry rateEntry_1
		INNER JOIN rateCost c_1 ON c_1.RateEntry_TI_PK = rateEntry_1.TI_PK

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateLineItem

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateLines

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateEntry


BeforeExecute
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
		rateEntry_1.TI_PK as RateEntry_TI_PK,
		rateEntry_1.TI_LineOrder as rateEntry,
		rateEntry_1.TI_RateStartDate as rateEntry_1,
		rateEntry_1.TI_RateEndDate as rateEntry_2,
		rateEntry_1.TI_RX_NKCurrency as rateEntry_3,
		rateEntry_1.TI_Frequency as rateEntry_4,
		rateEntry_1.TI_OH_Supplier as rateEntry_5,
		rateEntry_1.TI_OH_TransportProvider as rateEntry_6,
		rateEntry_1.TI_OH_Consignor as rateEntry_7,
		rateEntry_1.TI_OH_Consignee as rateEntry_8,
		rateEntry_1.TI_OA_CartagePickupAddressOverride as rateEntry_9,
		rateEntry_1.TI_OA_CartageDeliveryAddressOverride as rateEntry_10,
		rateEntry_1.TI_CartagePickupAddressPostCode as rateEntry_11,
		rateEntry_1.TI_CartageDeliveryAddressPostCode as rateEntry_12,
		rateEntry_1.TI_RS_NKServiceLevel_NI as rateEntry_13,
		rateEntry_1.TI_OriginLRC as rateEntry_14,
		rateEntry_1.TI_DestinationLRC as rateEntry_15,
		rateEntry_1.TI_ViaLRC as rateEntry_16,
		rateEntry_1.TI_PageHeading as rateEntry_17,
		rateEntry_1.TI_PageOpeningText as rateEntry_18,
		rateEntry_1.TI_PageClosingText as rateEntry_19,
		rateEntry_1.TI_OH_AgentOverride as rateEntry_20,
		rateEntry_1.TI_ParentID as rateEntry_21,
		rateEntry_1.TI_QuotePageIncoTerm as rateEntry_22,
		rateEntry_1.TI_BuyersConsolRateMode as rateEntry_23,
		rateEntry_1.TI_SystemCreateTimeUtc as rateEntry_24,
		rateEntry_1.TI_SystemCreateUser as rateEntry_25,
		rateEntry_1.TI_SystemLastEditTimeUtc as rateEntry_26,
		rateEntry_1.TI_SystemLastEditUser as rateEntry_27,
		rateEntry_1.TI_TH as rateEntry_28,
		rateEntry_1.TI_RC as rateEntry_29,
		rateEntry_1.TI_ContractNumber as rateEntry_30,
		rateEntry_1.TI_PL_NKCarrierServiceLevel as rateEntry_31,
		rateEntry_1.TI_TZ_OriginZone as rateEntry_32,
		rateEntry_1.TI_TZ_DestinationZone as rateEntry_33,
		rateEntry_1.TI_IsValid as rateEntry_34,
		rateEntry_1.TI_IsCrossTrade as rateEntry_35,
		rateEntry_1.TI_DataChecked as rateEntry_36,
		rateEntry_1.TI_MatchContainerRateClass as rateEntry_37,
		rateEntry_1.TI_TransitTime as rateEntry_38,
		rateEntry_1.TI_FrequencyUnit as rateEntry_39,
		rateEntry_1.TI_Mode as rateEntry_40,
		rateEntry_1.TI_RH_NKCommodityCode as rateEntry_41,
		rateEntry_1.TI_RateCategory as rateEntry_42,
		rateEntry_1.TI_FromID as rateEntry_43,
		rateEntry_1.TI_FromTableCode as rateEntry_44,
		rateEntry_1.TI_ToId as rateEntry_45,
		rateEntry_1.TI_ToTableCode as rateEntry_46,
		rateEntry_1.TI_OH_ControllingCustomer as rateEntry_47,
		rateEntry_1.TI_GC_Publisher as rateEntry_48,
		rateEntry_1.TI_IsTact as rateEntry_49,
		rateEntry_1.TI_ParentTableCode as rateEntry_50,
		rateEntry_1.TI_RateKey as rateEntry_51,
		sumOrNull(CASE
			WHEN items.TM_Type IN ('FLT', 'BAS')
				THEN items.TM_Value
			ELSE toDecimal64('0', 10)
		END) as FlatRate,
		sumOrNull(CASE
			WHEN items.TM_Type = 'MIN'
				THEN items.TM_Value
			ELSE toDecimal64('0', 10)
		END) as MinRate,
		sumOrNull(CASE
			WHEN items.TM_Type = 'UNT'
				THEN items.TM_Value
			ELSE toDecimal64('0', 10)
		END) as VariableRate
	FROM
		RateEntry rateEntry_1
			LEFT JOIN RateLines lines ON lines.TL_TI = rateEntry_1.TI_PK
			LEFT JOIN RateLineItem items ON items.TM_TL = lines.TL_PK
	WHERE
		(rateEntry_1.TI_RateEndDate IS NULL OR rateEntry_1.TI_RateEndDate > now()) AND
		items.TM_Type IN ('MIN', 'FLT', 'BAS', 'UNT')
	GROUP BY
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
		rateEntry_1.TI_RateKey
)
SELECT
	rateEntry_2.TI_PK,
	rateEntry_2.TI_LineOrder,
	rateEntry_2.TI_RateStartDate,
	rateEntry_2.TI_RateEndDate,
	rateEntry_2.TI_RX_NKCurrency,
	rateEntry_2.TI_Frequency,
	rateEntry_2.TI_OH_Supplier,
	rateEntry_2.TI_OH_TransportProvider,
	rateEntry_2.TI_OH_Consignor,
	rateEntry_2.TI_OH_Consignee,
	rateEntry_2.TI_OA_CartagePickupAddressOverride,
	rateEntry_2.TI_OA_CartageDeliveryAddressOverride,
	rateEntry_2.TI_CartagePickupAddressPostCode,
	rateEntry_2.TI_CartageDeliveryAddressPostCode,
	rateEntry_2.TI_RS_NKServiceLevel_NI,
	rateEntry_2.TI_OriginLRC,
	rateEntry_2.TI_DestinationLRC,
	rateEntry_2.TI_ViaLRC,
	rateEntry_2.TI_PageHeading,
	rateEntry_2.TI_PageOpeningText,
	rateEntry_2.TI_PageClosingText,
	rateEntry_2.TI_OH_AgentOverride,
	rateEntry_2.TI_ParentID,
	rateEntry_2.TI_QuotePageIncoTerm,
	rateEntry_2.TI_BuyersConsolRateMode,
	rateEntry_2.TI_SystemCreateTimeUtc,
	rateEntry_2.TI_SystemCreateUser,
	rateEntry_2.TI_SystemLastEditTimeUtc,
	rateEntry_2.TI_SystemLastEditUser,
	rateEntry_2.TI_TH,
	rateEntry_2.TI_RC,
	rateEntry_2.TI_ContractNumber,
	rateEntry_2.TI_PL_NKCarrierServiceLevel,
	rateEntry_2.TI_TZ_OriginZone,
	rateEntry_2.TI_TZ_DestinationZone,
	rateEntry_2.TI_IsValid,
	rateEntry_2.TI_IsCrossTrade,
	rateEntry_2.TI_DataChecked,
	rateEntry_2.TI_MatchContainerRateClass,
	rateEntry_2.TI_TransitTime,
	rateEntry_2.TI_FrequencyUnit,
	rateEntry_2.TI_Mode,
	rateEntry_2.TI_RH_NKCommodityCode,
	rateEntry_2.TI_RateCategory,
	rateEntry_2.TI_FromID,
	rateEntry_2.TI_FromTableCode,
	rateEntry_2.TI_ToId,
	rateEntry_2.TI_ToTableCode,
	rateEntry_2.TI_OH_ControllingCustomer,
	rateEntry_2.TI_GC_Publisher,
	rateEntry_2.TI_IsTact,
	rateEntry_2.TI_ParentTableCode,
	rateEntry_2.TI_RateKey,
	c_1.RateEntry_TI_PK,
	c_1.rateEntry,
	c_1.rateEntry_1,
	c_1.rateEntry_2,
	c_1.rateEntry_3,
	c_1.rateEntry_4,
	c_1.rateEntry_5,
	c_1.rateEntry_6,
	c_1.rateEntry_7,
	c_1.rateEntry_8,
	c_1.rateEntry_9,
	c_1.rateEntry_10,
	c_1.rateEntry_11,
	c_1.rateEntry_12,
	c_1.rateEntry_13,
	c_1.rateEntry_14,
	c_1.rateEntry_15,
	c_1.rateEntry_16,
	c_1.rateEntry_17,
	c_1.rateEntry_18,
	c_1.rateEntry_19,
	c_1.rateEntry_20,
	c_1.rateEntry_21,
	c_1.rateEntry_22,
	c_1.rateEntry_23,
	c_1.rateEntry_24,
	c_1.rateEntry_25,
	c_1.rateEntry_26,
	c_1.rateEntry_27,
	c_1.rateEntry_28,
	c_1.rateEntry_29,
	c_1.rateEntry_30,
	c_1.rateEntry_31,
	c_1.rateEntry_32,
	c_1.rateEntry_33,
	c_1.rateEntry_34,
	c_1.rateEntry_35,
	c_1.rateEntry_36,
	c_1.rateEntry_37,
	c_1.rateEntry_38,
	c_1.rateEntry_39,
	c_1.rateEntry_40,
	c_1.rateEntry_41,
	c_1.rateEntry_42,
	c_1.rateEntry_43,
	c_1.rateEntry_44,
	c_1.rateEntry_45,
	c_1.rateEntry_46,
	c_1.rateEntry_47,
	c_1.rateEntry_48,
	c_1.rateEntry_49,
	c_1.rateEntry_50,
	c_1.rateEntry_51,
	c_1.FlatRate,
	c_1.MinRate,
	c_1.VariableRate
FROM
	RateEntry rateEntry_2
		INNER JOIN rateCost c_1 ON c_1.RateEntry_TI_PK = rateEntry_2.TI_PK

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateLineItem

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateLines

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RateEntry


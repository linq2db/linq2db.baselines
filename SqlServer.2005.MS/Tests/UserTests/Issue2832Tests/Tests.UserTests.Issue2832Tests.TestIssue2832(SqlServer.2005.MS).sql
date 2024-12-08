(218693) SELECT 
	t218693.Id = t218692.Id
FROM [DctSetpointtype(218692)] as t218692 (spt)
		LEFT JOIN (
			[VWellTree(218695)] as t218695 (t2)
				INNER JOIN [DctOu(218697)] as t218697 (tp2) ON ({t218695.ShopId?}? = {t218697.Id})
				LEFT JOIN [UacUsersDatagroup(218700)] as t218700 (cudg) ON ({t218697.Id} = {t218700.DatagroupId} AND {t218700.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218705)] as t218705 (oudg) ON ({t218697.ParentId?}? = {t218705.DatagroupId} AND {t218705.UserId} = 150 AND {t218705.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218725)] as t218725 (d) ON ({t218695.WellId?}? = {t218725.WellId})
		)  ON ({t218725.SetpointtypeId} = {t218692.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218700.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t218705.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)

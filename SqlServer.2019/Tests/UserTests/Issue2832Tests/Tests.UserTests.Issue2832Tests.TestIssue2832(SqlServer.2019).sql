(246020) SELECT 
	t246020.Id = t246019.Id
FROM [DctSetpointtype(246019)] as t246019 (spt)
		LEFT JOIN (
			[VWellTree(246022)] as t246022 (t2)
				INNER JOIN [DctOu(246024)] as t246024 (tp2) ON ({t246022.ShopId?}? = {t246024.Id})
				LEFT JOIN [UacUsersDatagroup(246027)] as t246027 (cudg) ON ({t246024.Id} = {t246027.DatagroupId} AND {t246027.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246032)] as t246032 (oudg) ON ({t246024.ParentId?}? = {t246032.DatagroupId} AND {t246032.UserId} = 150 AND {t246032.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246052)] as t246052 (d) ON ({t246022.WellId?}? = {t246052.WellId})
		)  ON ({t246052.SetpointtypeId} = {t246019.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246027.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t246032.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)

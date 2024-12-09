(501020) SELECT 
	t501020.Id = t501019.Id
FROM [DctSetpointtype(501019)] as t501019 (spt)
		LEFT JOIN (
			[VWellTree(501022)] as t501022 (t2)
				INNER JOIN [DctOu(501024)] as t501024 (tp2) ON ({t501022.ShopId?}? = {t501024.Id})
				LEFT JOIN [UacUsersDatagroup(501027)] as t501027 (cudg) ON ({t501024.Id} = {t501027.DatagroupId} AND {t501027.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(501032)] as t501032 (oudg) ON ({t501024.ParentId?}? = {t501032.DatagroupId} AND {t501032.UserId} = 150 AND {t501032.Inheritablepermission} > 0)
				INNER JOIN [Deviation(501052)] as t501052 (d) ON ({t501022.WellId?}? = {t501052.WellId})
		)  ON ({t501052.SetpointtypeId} = {t501019.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t501027.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t501032.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

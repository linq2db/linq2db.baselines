(99812) SELECT 
	t99812.Id = t99811.Id
FROM [DctSetpointtype(99811)] as t99811 (spt)
		LEFT JOIN (
			[VWellTree(99814)] as t99814 (t2)
				INNER JOIN [DctOu(99816)] as t99816 (tp2) ON ({t99814.ShopId?}? = {t99816.Id})
				LEFT JOIN [UacUsersDatagroup(99819)] as t99819 (cudg) ON ({t99816.Id} = {t99819.DatagroupId} AND {t99819.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99824)] as t99824 (oudg) ON ({t99816.ParentId?}? = {t99824.DatagroupId} AND {t99824.UserId} = 150 AND {t99824.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99844)] as t99844 (d) ON ({t99814.WellId?}? = {t99844.WellId})
		)  ON ({t99844.SetpointtypeId} = {t99811.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99819.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99824.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

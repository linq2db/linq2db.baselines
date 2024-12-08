(504024) SELECT 
	t504024.Id = t504023.Id
FROM [DctSetpointtype(504023)] as t504023 (spt)
		LEFT JOIN (
			[VWellTree(504026)] as t504026 (t2)
				INNER JOIN [DctOu(504028)] as t504028 (tp2) ON ({t504026.ShopId?}? = {t504028.Id})
				LEFT JOIN [UacUsersDatagroup(504031)] as t504031 (cudg) ON ({t504028.Id} = {t504031.DatagroupId} AND {t504031.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(504036)] as t504036 (oudg) ON ({t504028.ParentId?}? = {t504036.DatagroupId} AND {t504036.UserId} = 150 AND {t504036.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504056)] as t504056 (d) ON ({t504026.WellId?}? = {t504056.WellId})
		)  ON ({t504056.SetpointtypeId} = {t504023.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t504031.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t504036.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)

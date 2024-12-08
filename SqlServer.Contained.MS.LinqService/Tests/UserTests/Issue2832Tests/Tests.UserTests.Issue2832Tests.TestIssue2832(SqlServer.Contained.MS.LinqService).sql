(504270) SELECT 
	t504270.Id = t504269.Id
FROM [DctSetpointtype(504269)] as t504269 (spt)
		LEFT JOIN (
			[VWellTree(504272)] as t504272 (t2)
				INNER JOIN [DctOu(504274)] as t504274 (tp2) ON ({t504272.ShopId?}? = {t504274.Id})
				LEFT JOIN [UacUsersDatagroup(504277)] as t504277 (cudg) ON ({t504274.Id} = {t504277.DatagroupId} AND {t504277.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(504282)] as t504282 (oudg) ON ({t504274.ParentId?}? = {t504282.DatagroupId} AND {t504282.UserId} = 150 AND {t504282.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504302)] as t504302 (d) ON ({t504272.WellId?}? = {t504302.WellId})
		)  ON ({t504302.SetpointtypeId} = {t504269.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t504277.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t504282.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

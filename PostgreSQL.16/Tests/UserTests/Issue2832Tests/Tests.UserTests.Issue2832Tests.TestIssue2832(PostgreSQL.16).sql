(107329) SELECT 
	t107329.Id = t107328.Id
FROM [DctSetpointtype(107328)] as t107328 (spt)
		LEFT JOIN (
			[VWellTree(107331)] as t107331 (t2)
				INNER JOIN [DctOu(107333)] as t107333 (tp2) ON ({t107331.ShopId?}? = {t107333.Id})
				LEFT JOIN [UacUsersDatagroup(107336)] as t107336 (cudg) ON ({t107333.Id} = {t107336.DatagroupId} AND {t107336.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107341)] as t107341 (oudg) ON ({t107333.ParentId?}? = {t107341.DatagroupId} AND {t107341.UserId} = 150 AND {t107341.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107361)] as t107361 (d) ON ({t107331.WellId?}? = {t107361.WellId})
		)  ON ({t107361.SetpointtypeId} = {t107328.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107336.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107341.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

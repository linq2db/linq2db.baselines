(245911) SELECT 
	t245911.Id = t245910.Id
FROM [DctSetpointtype(245910)] as t245910 (spt)
		LEFT JOIN (
			[VWellTree(245913)] as t245913 (t2)
				INNER JOIN [DctOu(245915)] as t245915 (tp2) ON ({t245913.ShopId?}? = {t245915.Id})
				LEFT JOIN [UacUsersDatagroup(245918)] as t245918 (cudg) ON ({t245915.Id} = {t245918.DatagroupId} AND {t245918.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245923)] as t245923 (oudg) ON ({t245915.ParentId?}? = {t245923.DatagroupId} AND {t245923.UserId} = 150 AND {t245923.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245943)] as t245943 (d) ON ({t245913.WellId?}? = {t245943.WellId})
		)  ON ({t245943.SetpointtypeId} = {t245910.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245918.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245923.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

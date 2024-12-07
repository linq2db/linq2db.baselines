(238051) SELECT 
	t238051.Id = t238050.Id
FROM [DctSetpointtype(238050)] as t238050 (spt)
		LEFT JOIN (
			[VWellTree(238053)] as t238053 (t2)
				INNER JOIN [DctOu(238055)] as t238055 (tp2) ON ({t238053.ShopId?}? = {t238055.Id})
				LEFT JOIN [UacUsersDatagroup(238058)] as t238058 (cudg) ON ({t238055.Id} = {t238058.DatagroupId} AND {t238058.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238063)] as t238063 (oudg) ON ({t238055.ParentId?}? = {t238063.DatagroupId} AND {t238063.UserId} = 150 AND {t238063.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238083)] as t238083 (d) ON ({t238053.WellId?}? = {t238083.WellId})
		)  ON ({t238083.SetpointtypeId} = {t238050.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238058.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t238063.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

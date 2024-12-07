(242329) SELECT 
	t242329.Id = t242328.Id
FROM [DctSetpointtype(242328)] as t242328 (spt)
		LEFT JOIN (
			[VWellTree(242331)] as t242331 (t2)
				INNER JOIN [DctOu(242333)] as t242333 (tp2) ON ({t242331.ShopId?}? = {t242333.Id})
				LEFT JOIN [UacUsersDatagroup(242336)] as t242336 (cudg) ON ({t242333.Id} = {t242336.DatagroupId} AND {t242336.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(242341)] as t242341 (oudg) ON ({t242333.ParentId?}? = {t242341.DatagroupId} AND {t242341.UserId} = 150 AND {t242341.Inheritablepermission} > 0)
				INNER JOIN [Deviation(242361)] as t242361 (d) ON ({t242331.WellId?}? = {t242361.WellId})
		)  ON ({t242361.SetpointtypeId} = {t242328.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t242336.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t242341.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

(240594) SELECT 
	t240594.Id = t240593.Id
FROM [DctSetpointtype(240593)] as t240593 (spt)
		LEFT JOIN (
			[VWellTree(240596)] as t240596 (t2)
				INNER JOIN [DctOu(240598)] as t240598 (tp2) ON ({t240596.ShopId?}? = {t240598.Id})
				LEFT JOIN [UacUsersDatagroup(240601)] as t240601 (cudg) ON ({t240598.Id} = {t240601.DatagroupId} AND {t240601.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240606)] as t240606 (oudg) ON ({t240598.ParentId?}? = {t240606.DatagroupId} AND {t240606.UserId} = 150 AND {t240606.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240626)] as t240626 (d) ON ({t240596.WellId?}? = {t240626.WellId})
		)  ON ({t240626.SetpointtypeId} = {t240593.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240601.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240606.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)

(240569) SELECT 
	t240569.Id = t240568.Id
FROM [DctSetpointtype(240568)] as t240568 (spt)
		LEFT JOIN (
			[VWellTree(240571)] as t240571 (t2)
				INNER JOIN [DctOu(240573)] as t240573 (tp2) ON ({t240571.ShopId?}? = {t240573.Id})
				LEFT JOIN [UacUsersDatagroup(240576)] as t240576 (cudg) ON ({t240573.Id} = {t240576.DatagroupId} AND {t240576.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240581)] as t240581 (oudg) ON ({t240573.ParentId?}? = {t240581.DatagroupId} AND {t240581.UserId} = 150 AND {t240581.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240601)] as t240601 (d) ON ({t240571.WellId?}? = {t240601.WellId})
		)  ON ({t240601.SetpointtypeId} = {t240568.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240576.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240581.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

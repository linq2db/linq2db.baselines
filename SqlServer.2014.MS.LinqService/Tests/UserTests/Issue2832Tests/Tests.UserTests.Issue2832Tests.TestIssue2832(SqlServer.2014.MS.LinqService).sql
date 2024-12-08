(240612) SELECT 
	t240612.Id = t240611.Id
FROM [DctSetpointtype(240611)] as t240611 (spt)
		LEFT JOIN (
			[VWellTree(240614)] as t240614 (t2)
				INNER JOIN [DctOu(240616)] as t240616 (tp2) ON ({t240614.ShopId?}? = {t240616.Id})
				LEFT JOIN [UacUsersDatagroup(240619)] as t240619 (cudg) ON ({t240616.Id} = {t240619.DatagroupId} AND {t240619.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240624)] as t240624 (oudg) ON ({t240616.ParentId?}? = {t240624.DatagroupId} AND {t240624.UserId} = 150 AND {t240624.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240644)] as t240644 (d) ON ({t240614.WellId?}? = {t240644.WellId})
		)  ON ({t240644.SetpointtypeId} = {t240611.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240619.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240624.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

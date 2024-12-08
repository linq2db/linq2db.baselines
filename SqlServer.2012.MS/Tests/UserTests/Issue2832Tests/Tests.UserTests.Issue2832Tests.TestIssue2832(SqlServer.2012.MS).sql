(240609) SELECT 
	t240609.Id = t240608.Id
FROM [DctSetpointtype(240608)] as t240608 (spt)
		LEFT JOIN (
			[VWellTree(240611)] as t240611 (t2)
				INNER JOIN [DctOu(240613)] as t240613 (tp2) ON ({t240611.ShopId?}? = {t240613.Id})
				LEFT JOIN [UacUsersDatagroup(240616)] as t240616 (cudg) ON ({t240613.Id} = {t240616.DatagroupId} AND {t240616.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240621)] as t240621 (oudg) ON ({t240613.ParentId?}? = {t240621.DatagroupId} AND {t240621.UserId} = 150 AND {t240621.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240641)] as t240641 (d) ON ({t240611.WellId?}? = {t240641.WellId})
		)  ON ({t240641.SetpointtypeId} = {t240608.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240616.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240621.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)

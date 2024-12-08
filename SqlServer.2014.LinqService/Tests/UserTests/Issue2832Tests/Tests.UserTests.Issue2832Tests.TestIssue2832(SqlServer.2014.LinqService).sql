(240633) SELECT 
	t240633.Id = t240632.Id
FROM [DctSetpointtype(240632)] as t240632 (spt)
		LEFT JOIN (
			[VWellTree(240635)] as t240635 (t2)
				INNER JOIN [DctOu(240637)] as t240637 (tp2) ON ({t240635.ShopId?}? = {t240637.Id})
				LEFT JOIN [UacUsersDatagroup(240640)] as t240640 (cudg) ON ({t240637.Id} = {t240640.DatagroupId} AND {t240640.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240645)] as t240645 (oudg) ON ({t240637.ParentId?}? = {t240645.DatagroupId} AND {t240645.UserId} = 150 AND {t240645.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240665)] as t240665 (d) ON ({t240635.WellId?}? = {t240665.WellId})
		)  ON ({t240665.SetpointtypeId} = {t240632.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240640.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240645.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

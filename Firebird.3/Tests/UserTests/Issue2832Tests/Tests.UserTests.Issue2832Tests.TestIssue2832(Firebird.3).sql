(158655) SELECT 
	t158655.Id = t158654.Id
FROM [DctSetpointtype(158654)] as t158654 (spt)
		LEFT JOIN (
			[VWellTree(158657)] as t158657 (t2)
				INNER JOIN [DctOu(158659)] as t158659 (tp2) ON ({t158657.ShopId?}? = {t158659.Id})
				LEFT JOIN [UacUsersDatagroup(158662)] as t158662 (cudg) ON ({t158659.Id} = {t158662.DatagroupId} AND {t158662.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(158667)] as t158667 (oudg) ON ({t158659.ParentId?}? = {t158667.DatagroupId} AND {t158667.UserId} = 150 AND {t158667.Inheritablepermission} > 0)
				INNER JOIN [Deviation(158687)] as t158687 (d) ON ({t158657.WellId?}? = {t158687.WellId})
		)  ON ({t158687.SetpointtypeId} = {t158654.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t158662.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t158667.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)

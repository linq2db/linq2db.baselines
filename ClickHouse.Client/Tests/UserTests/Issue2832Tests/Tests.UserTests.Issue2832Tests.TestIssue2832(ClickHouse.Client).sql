(169649) SELECT 
	t169649.Id = t169648.Id
FROM [DctSetpointtype(169648)] as t169648 (spt)
		LEFT JOIN (
			(169686) SELECT 
				t169686.SetpointtypeId        = t169681.SetpointtypeId,
				t169686.Permission            = t169656.Permission?,
				t169686.Inheritablepermission = t169661.Inheritablepermission?
			FROM [VWellTree(169651)] as t169651 (t2)
					INNER JOIN [DctOu(169653)] as t169653 (tp2) ON ({t169651.ShopId?}? = {t169653.Id})
					LEFT JOIN [UacUsersDatagroup(169656)] as t169656 (cudg) ON ({t169653.Id} = {t169656.DatagroupId} AND {t169656.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(169661)] as t169661 (oudg) ON ({t169653.ParentId?}? = {t169661.DatagroupId} AND {t169661.UserId} = 150 AND {t169661.Inheritablepermission} > 0)
					INNER JOIN [Deviation(169681)] as t169681 (d) ON ({t169651.WellId?}? = {t169681.WellId})
		) as t169686 (t1) ON ({t169686.SetpointtypeId?} = {t169648.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t169686.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t169686.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)

(169689) SELECT 
	t169689.Id = t169688.Id
FROM [DctSetpointtype(169688)] as t169688 (spt)
		LEFT JOIN (
			(169726) SELECT 
				t169726.SetpointtypeId        = t169721.SetpointtypeId,
				t169726.Permission            = t169696.Permission?,
				t169726.Inheritablepermission = t169701.Inheritablepermission?
			FROM [VWellTree(169691)] as t169691 (t2)
					INNER JOIN [DctOu(169693)] as t169693 (tp2) ON ({t169691.ShopId?}? = {t169693.Id})
					LEFT JOIN [UacUsersDatagroup(169696)] as t169696 (cudg) ON ({t169693.Id} = {t169696.DatagroupId} AND {t169696.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(169701)] as t169701 (oudg) ON ({t169693.ParentId?}? = {t169701.DatagroupId} AND {t169701.UserId} = 150 AND {t169701.Inheritablepermission} > 0)
					INNER JOIN [Deviation(169721)] as t169721 (d) ON ({t169691.WellId?}? = {t169721.WellId})
		) as t169726 (t1) ON ({t169726.SetpointtypeId?} = {t169688.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t169726.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t169726.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)

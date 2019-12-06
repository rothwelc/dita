<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!-- Darwin Information Typing Architecture (DITA) Version 2.0     -->
<!-- [[[Draft level]]]                                           -->
<!-- [[[Release date]]]                                           -->
<!-- Copyright (c) OASIS Open 2019. All rights reserved.           -->
<!-- Source: [[[Source link]]]                                -->
<!--                                                               -->
<!-- ============================================================= -->
<!--  MODULE:    DITA DITA Topic                                   -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      [[[Release date]]]                                        -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA Topic//EN"                    -->
<!--       Delivered as file "topic.mod"                                -->
<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the base Topic type                -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Corrected the public ID for tblDecl.mod    -->
<!--    2005.11.15 RDA: Removed old declaration for topicreftypes  -->
<!--                    entity                                     -->
<!--    2005.11.15 RDA: Corrected the PURPOSE in this comment      -->
<!--    2005.11.15 RDA: Corrected Long Names for alt, indextermref -->
<!--    2006.06.06 RDA: Bug fixes:                                 -->
<!--                    Added xref and fn to fig.cnt               -->
<!--                    Remove xmlns="" from global-atts           -->
<!--    2006.06.06 RDA: Moved shared items to commonElements file  -->
<!--    2006.06.07 RDA: Added abstract> element                    -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2006.06.14 RDA: Add dir attribute to localization-atts     -->
<!--    2006.06.20 RDA: defn.cnt now explicitly sets its content   -->
<!--    2006.07.06 RDA: Moved class attributes in from topicAttr   -->
<!--    2006.11.30 RDA: Add -dita-use-conref-target to enumerated  -->
<!--                      attributes                               -->
<!--    2006.11.30 RDA: Remove #FIXED from DITAArchVersion         -->
<!--    2007.12.01 EK:  Reformatted DTD modules for DITA 1.2        -->
<!--    2008.01.28 RDA: Add draft-comment to body.cnt              -->
<!--    2008.01.28 RDA: Moved <metadata> defn. to metaDecl.mod     -->
<!--    2008.01.30 RDA: Replace @conref defn. with %conref-atts;   -->
<!--    2008.02.12 RDA: Add ph to linktext, navtitle, searchtitle  -->
<!--    2008.02.12 RDA: Modify imbeds to use specific 1.2 version  -->
<!--    2008.02.12 RDA: Move navtitle to commonElements.mod        -->
<!--    2008.02.13 RDA: Add bodydiv and sectiondiv                 -->
<!--    2008.02.13 RDA: Create .content and .attributes entities   -->
<!--    2008.05.06 RDA: Moved sectiondiv to section.cnt; created   -->
<!--                    example.cnt for use by example element     -->
<!--    2018.03.14 KJE: Removed @collection-type="tree"; removed   -->
<!--                    @role="external" and "sample"              -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- default namespace prefix for DITAArchVersion attribute can be
     overridden through predefinition in the document type shell   -->
<!ENTITY % DITAArchNSPrefix
  "ditaarch"
>

<!-- must be instanced on each topic type                          -->
<!ENTITY % arch-atts 
             "xmlns:%DITAArchNSPrefix; 
                        CDATA
                                  #FIXED 'http://dita.oasis-open.org/architecture/2005/'
              %DITAArchNSPrefix;:DITAArchVersion
                         CDATA
                                  '1.3'
  "
>



<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->


<!--                    Definitions of declared elements           -->
<!ENTITY % topicDefns
    PUBLIC "-//OASIS//ENTITIES DITA 2.0 Topic Definitions//EN" "topicDefn.ent" 
>%topicDefns;

<!--                      Content elements common to map and topic -->
<!ENTITY % commonElements

  PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Common Elements//EN"
         "commonElements.mod" 
>%commonElements;

<!--                       MetaData Elements, plus indexterm       -->
<!ENTITY % metaXML 
  PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Metadata//EN"
         "metaDecl.mod" 
>%metaXML;

<!-- ============================================================= -->
<!--                COMMON ENTITY DECLARATIONS                     -->
<!-- ============================================================= -->

<!-- Use of this entity is deprecated; the nbsp entity will be 
     removed in DITA 2.0.                                          -->
<!ENTITY nbsp                   "&#xA0;"                             >


<!-- ============================================================= -->
<!--                    NOTATION DECLARATIONS                      -->
<!-- ============================================================= -->
<!--                    DITA uses the direct reference model; 
                        notations may be added later as required   -->


<!-- ============================================================= -->
<!--                    STRUCTURAL MEMBERS                         -->
<!-- ============================================================= -->


<!ENTITY % info-types 
  "topic
  "
> 

<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                    SPECIALIZATION OF DECLARED ELEMENTS        -->
<!-- ============================================================= -->

<!ENTITY % topic-info-types 
  "%info-types;
  "
>

<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->

<!ENTITY included-domains 
  ""
>


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % abstract.cnt
              "#PCDATA |
               %basic.block; |
               %basic.ph; |
               %data.elements.incl; |
               %foreign.unknown.incl; |
               %shortdesc; |
               %txt.incl;"
>
<!ENTITY % body.cnt
              "%basic.block; |
               %data.elements.incl; |
               %draft-comment; |
               %foreign.unknown.incl; |
               %required-cleanup;"
>
<!ENTITY % bodydiv.cnt
              "#PCDATA |
               %basic.block; |
               %basic.ph; |
               %data.elements.incl; |
               %foreign.unknown.incl; |
               %txt.incl;"
>
<!ENTITY % example.cnt
              "#PCDATA |
               %basic.block; |
               %basic.ph; |
               %data.elements.incl; |
               %foreign.unknown.incl; |
               %title; |
               %txt.incl;"
>
<!ENTITY % section.cnt
              "#PCDATA |
               %basic.block; |
               %basic.ph; |
               %data.elements.incl; |
               %foreign.unknown.incl; |
               %sectiondiv; |
               %title; |
               %txt.incl;"
>
<!ENTITY % section.notitle.cnt
              "#PCDATA |
               %basic.block; |
               %basic.ph; |
               %data.elements.incl; |
               %foreign.unknown.incl; |
               %sectiondiv; |
               %txt.incl;"
>
<!ENTITY % sectiondiv.cnt
              "#PCDATA |
               %basic.block; |
               %basic.ph; |
               %data.elements.incl; |
               %foreign.unknown.incl; |
               %txt.incl;"
>
<!ENTITY % relational-atts
              "type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               role
                          (ancestor |
                           child |
                           cousin |
                           descendant |
                           friend |
                           next |
                           other |
                           parent |
                           previous |
                           sibling |
                           -dita-use-conref-target)
                                    #IMPLIED
               otherrole
                          CDATA
                                    #IMPLIED"
>
<!ENTITY % rel-atts
              "type
                          CDATA
                                    #IMPLIED
               role
                          (ancestor |
                           child |
                           cousin |
                           descendant |
                           friend |
                           next |
                           other |
                           parent |
                           previous |
                           sibling |
                           -dita-use-conref-target)
                                    #IMPLIED
               otherrole
                          CDATA
                                    #IMPLIED"
>
<!--                    LONG NAME: Topic                           -->
<!ENTITY % topic.content
                       "((%title;),
                         (%titlealts;)?,
                         (%shortdesc; |
                          %abstract;)?,
                         (%prolog;)?,
                         (%body;)?,
                         (%related-links;)?,
                         (%topic-info-types;)*)"
>
<!ENTITY % topic.attributes
              "id
                          ID
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  topic %topic.content;>
<!ATTLIST  topic %topic.attributes;
                 %arch-atts;
                 domains 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Title Alternatives              -->
<!ENTITY % titlealts.content
                       "((%navtitle;)?,
                         (%searchtitle;)?)"
>
<!ENTITY % titlealts.attributes
              "%univ-atts;"
>
<!ELEMENT  titlealts %titlealts.content;>
<!ATTLIST  titlealts %titlealts.attributes;>


<!--                    LONG NAME: Search Title                    -->
<!ENTITY % searchtitle.content
                       "(%words.cnt; |
                         %ph;)*"
>
<!ENTITY % searchtitle.attributes
              "%univ-atts;"
>
<!ELEMENT  searchtitle %searchtitle.content;>
<!ATTLIST  searchtitle %searchtitle.attributes;>


<!--                    LONG NAME: Short Description               -->
<!ENTITY % shortdesc.content
                       "(%title.cnt; |
                         %xref;)*"
>
<!ENTITY % shortdesc.attributes
              "%univ-atts;"
>
<!ELEMENT  shortdesc %shortdesc.content;>
<!ATTLIST  shortdesc %shortdesc.attributes;>


<!--                    LONG NAME: Abstract                        -->
<!ENTITY % abstract.content
                       "(%abstract.cnt;)*"
>
<!ENTITY % abstract.attributes
              "%univ-atts;"
>
<!ELEMENT  abstract %abstract.content;>
<!ATTLIST  abstract %abstract.attributes;>


<!--                    LONG NAME: Body                            -->
<!ENTITY % body.content
                       "(%body.cnt; |
                         %bodydiv; |
                         %example; |
                         %section;)*"
>
<!ENTITY % body.attributes
              "%univ-atts;"
>
<!ELEMENT  body %body.content;>
<!ATTLIST  body %body.attributes;>


<!--                    LONG NAME: Body division                   -->
<!ENTITY % bodydiv.content
                       "(%bodydiv.cnt; |
                         %bodydiv; |
                         %section;)*"
>
<!ENTITY % bodydiv.attributes
              "%univ-atts;"
>
<!ELEMENT  bodydiv %bodydiv.content;>
<!ATTLIST  bodydiv %bodydiv.attributes;>



<!--                    LONG NAME: No Topic nesting                -->
<!ELEMENT no-topic-nesting EMPTY >

    <!--                    LONG NAME: Section                         -->
<!ENTITY % section.content
                       "(%section.cnt;)*"
>
<!ENTITY % section.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  section %section.content;>
<!ATTLIST  section %section.attributes;>


<!--                    LONG NAME: Section division                -->
<!ENTITY % sectiondiv.content
                       "(%sectiondiv.cnt; |
                         %sectiondiv;)*"
>
<!ENTITY % sectiondiv.attributes
              "%univ-atts;"
>
<!ELEMENT  sectiondiv %sectiondiv.content;>
<!ATTLIST  sectiondiv %sectiondiv.attributes;>


<!--                    LONG NAME: Example                         -->
<!ENTITY % example.content
                       "(%example.cnt;)*"
>
<!ENTITY % example.attributes
              "spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  example %example.content;>
<!ATTLIST  example %example.attributes;>


<!--                    LONG NAME: prolog                          -->
<!ENTITY % prolog.content
                       "((%author;)*,
                         (%source;)?,
                         (%publisher;)?,
                         (%copyright;)*,
                         (%critdates;)?,
                         (%permissions;)?,
                         (%metadata;)*,
                         (%resourceid;)*,
                         (%data.elements.incl; |
                          %foreign.unknown.incl;)*)"
>
<!ENTITY % prolog.attributes
              "%univ-atts;"
>
<!ELEMENT  prolog %prolog.content;>
<!ATTLIST  prolog %prolog.attributes;>


<!--                    LONG NAME: related-links                   -->
<!ENTITY % related-links.content
                       "(%link; |
                         %linklist; |
                         %linkpool;)*"
>
<!ENTITY % related-links.attributes
              "%relational-atts;
               %univ-atts;"
>
<!ELEMENT  related-links %related-links.content;>
<!ATTLIST  related-links %related-links.attributes;>


<!--                    LONG NAME: link                            -->
<!ENTITY % link.content
                       "((%linktext;)?,
                         (%desc;)?)"
>
<!ENTITY % link.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               %relational-atts;
               %univ-atts;"
>
<!ELEMENT  link %link.content;>
<!ATTLIST  link %link.attributes;>


<!--                    LONG NAME: linktext                        -->
<!ENTITY % linktext.content
                       "(%words.cnt; |
                         %ph;)*"
>
<!ENTITY % linktext.attributes
              "%univ-atts;"
>
<!ELEMENT  linktext %linktext.content;>
<!ATTLIST  linktext %linktext.attributes;>


<!--                    LONG NAME: linklist                        -->
<!ENTITY % linklist.content
                       "((%title;)?,
                         (%desc;)?,
                         (%linklist; |
                          %link;)*,
                         (%linkinfo;)?)"
>
<!ENTITY % linklist.attributes
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               duplicates
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               mapkeyref
                          CDATA
                                    #IMPLIED
               %relational-atts;
               %univ-atts;
               spectitle
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  linklist %linklist.content;>
<!ATTLIST  linklist %linklist.attributes;>


<!--                    LONG NAME: linkinfo                        -->
<!ENTITY % linkinfo.content
                       "(%desc.cnt;)*"
>
<!ENTITY % linkinfo.attributes
              "%univ-atts;"
>
<!ELEMENT  linkinfo %linkinfo.content;>
<!ATTLIST  linkinfo %linkinfo.attributes;>


<!--                    LONG NAME: linkpool                        -->
<!ENTITY % linkpool.content
                       "(%linkpool; |
                         %link;)*"
>
<!ENTITY % linkpool.attributes
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               duplicates
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               mapkeyref
                          CDATA
                                    #IMPLIED
               %relational-atts;
               %univ-atts;"
>
<!ELEMENT  linkpool %linkpool.content;>
<!ATTLIST  linkpool %linkpool.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  abstract       class CDATA "- topic/abstract "   >
<!ATTLIST  body           class CDATA "- topic/body "       >
<!ATTLIST  bodydiv        class CDATA "- topic/bodydiv "    >
<!ATTLIST  example        class CDATA "- topic/example "    >
<!ATTLIST  link           class CDATA "- topic/link "       >
<!ATTLIST  linkinfo       class CDATA "- topic/linkinfo "   >
<!ATTLIST  linklist       class CDATA "- topic/linklist "   >
<!ATTLIST  linkpool       class CDATA "- topic/linkpool "   >
<!ATTLIST  linktext       class CDATA "- topic/linktext "   >
<!ATTLIST  no-topic-nesting   class CDATA "- topic/no-topic-nesting ">
<!ATTLIST  prolog         class CDATA "- topic/prolog "     >
<!ATTLIST  related-links   class CDATA "- topic/related-links ">
<!ATTLIST  searchtitle    class CDATA "- topic/searchtitle ">
<!ATTLIST  section        class CDATA "- topic/section "    >
<!ATTLIST  sectiondiv     class CDATA "- topic/sectiondiv " >
<!ATTLIST  titlealts      class CDATA "- topic/titlealts "  >
<!ATTLIST  topic          class CDATA "- topic/topic "      >
<!ATTLIST  shortdesc      class CDATA "- topic/shortdesc "  >

<!-- ================== End of DITA Topic Module ==================== -->
 
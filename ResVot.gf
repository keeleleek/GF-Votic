-- resource ResVot = ParamX - [Number] ** open Prelude,Predef in {
resource ResVot = ParamX ** open Prelude,Predef in {

param
  -- Number = Sg | Pl ;
  -- Number = singular | plural ; -- todo add type synonyms
  -- Case = nominative | genitive | partitive | illative | inessive | elative | allative | adessive | ablative | translative | terminative | comitative ;
  Case = nominative | genitive ; -- | partitive | illative | inessive | elative | allative | adessive | ablative | translative | terminative | comitative ;
  NForm = NF Number Case ;

oper
  Noun : Type = {  s : NForm => Str };
  
  -- mkNoun : Str -> Noun = \str -> {
    -- s = table {
      -- NF Sg nominative => str + "+sg+nom";
      -- NF Pl nominative => str + "+pl+nom";
      -- NF Sg genitive   => str + "+sg+gen";
      -- NF Pl genitive   => str + "+pl+gen"
    -- } 
  -- };
  
  -- smart paradigm
  -- mkNoun : Str -> Noun = \str ->
    -- case str of {
      -- _ + "põ" => mkAap str ;
      -- _ + "kõ" => mkPoikõ (tk 2 str) ;
      -- _ + "tö" => let tü = take 2 str ;
                      -- tö = dp 2 str ;
                   -- in mkTütö tü tö ;
      -- _        => Predef.error "Doesn't look like a noun >:("
    -- };


  -- mkAapõ : Str -> Noun = \aapõ -> 
    -- case aapõ of {
      -- aa + "põ" => mkAapõConcrete aa ; 
      -- _ => Predef.error "Unsuitable lemma for mkAapõ"
    -- } ;

  -- mkAapõConcrete : Str -> Noun = \aa -> 
    -- { s = 
      -- table {
        -- NF Sg nominative => aa + "põ" ; 
        -- NF Pl nominative => aa + "võd" ; 
        -- NF Sg genitive => aa + "va" ; 
        -- NF Pl genitive => aa + "põje" ; 
        -- NF Sg partitive => aa + "pa" ; 
        -- NF Pl partitive => aa + "poi" ; 
        -- NF Sg illative => aa + "paa" ; 
        -- NF Sg illative => aa + "pasõ" ; 
        -- NF Pl illative => aa + "poisõ" ; 
        -- NF Sg inessive => aa + "vaz" ; 
        -- NF Pl inessive => aa + "voiz" ; 
        -- NF Sg elative => aa + "võssõ" ; 
        -- NF Pl elative => aa + "poissõ" ; 
        -- NF Sg allative => aa + "võllõ" ; 
        -- NF Pl allative => aa + "poillõ" ; 
        -- NF Sg adessive => aa + "võl" ; 
        -- NF Pl adessive => aa + "poil" ; 
        -- NF Sg ablative => aa + "võssi" ; 
        -- NF Pl ablative => aa + "poissi" ; 
        -- NF Sg translative => aa + "passi" ; 
        -- NF Pl translative => aa + "poissi" ; 
        -- NF Sg terminative => aa + "passaa" ; 
        -- NF Pl terminative => aa + "poissaa" ; 
        -- NF Sg comitative => aa + "vaka" ; 
        -- NF Pl comitative => aa + "poika"
      -- }
    -- } ;


-- -------------------------

  -- mkPoikõ : Str -> Noun = \poikõ -> 
    -- case poikõ of {
      -- poi + "kõ" => mkPoikõConcrete poi ; 
      -- _ => Predef.error "Unsuitable lemma for mkPoikõ"
    -- } ;

  -- mkPoikõConcrete : Str -> Noun = \poi -> 
    -- { s = 
      -- table {
        -- NF Sg nominative => poi + "kõ" ; 
        -- NF Pl nominative => poi + "gõd" ; 
        -- NF Sg genitive => poi + "ga" ; 
        -- NF Pl genitive => poi + "ki" ; 
        -- NF Pl genitive => poi + "kije" ; 
        -- NF Sg partitive => poi + "ka" ; 
        -- NF Sg partitive => poi + "kaa" ; 
        -- NF Pl partitive => poi + "ki" ; 
        -- NF Pl partitive => poi + "kitõ" ; 
        -- NF Sg illative => poi + "kaa" ; 
        -- NF Sg illative => poi + "kasõ" ; 
        -- NF Pl illative => poi + "ki" ; 
        -- NF Pl illative => poi + "kisõ" ; 
        -- NF Sg inessive => poi + "gõz" ; 
        -- NF Pl inessive => poi + "kiz" ; 
        -- NF Sg elative => poi + "gõssõ" ; 
        -- NF Pl elative => poi + "kissõ" ; 
        -- NF Sg allative => poi + "gõllõ" ; 
        -- NF Pl allative => poi + "killõ" ; 
        -- NF Sg adessive => poi + "gõl" ; 
        -- NF Pl adessive => poi + "kil" ; 
        -- NF Sg ablative => poi + "gõltõ" ; 
        -- NF Pl ablative => poi + "kiltõ" ; 
        -- NF Sg translative => poi + "gõssi" ; 
        -- NF Pl translative => poi + "kissi" ; 
        -- NF Sg terminative => poi + "kassaa" ; 
        -- NF Pl terminative => poi + "kissaa" ; 
        -- NF Sg comitative => poi + "gaka" ; 
        -- NF Pl comitative => poi + "kika"
      -- }
    -- } ;


-- -------------------------

  -- mkAikõ : Str -> Noun = \aikõ -> 
    -- case aikõ of {
      -- ai + "kõ" => mkAikõConcrete ai ; 
      -- _ => Predef.error "Unsuitable lemma for mkAikõ"
    -- } ;

  -- mkAikõConcrete : Str -> Noun = \ai -> 
    -- { s = 
      -- table {
        -- NF Sg nominative => ai + "kõ" ; 
        -- NF Pl nominative => ai + "gõd" ; 
        -- NF Sg genitive => ai + "ga" ; 
        -- NF Pl genitive => ai + "koi" ; 
        -- NF Pl genitive => ai + "kojõ" ; 
        -- NF Sg partitive => ai + "ka" ; 
        -- NF Sg partitive => ai + "kaa" ; 
        -- NF Pl partitive => ai + "koi" ; 
        -- NF Pl partitive => ai + "koitõ" ; 
        -- NF Sg illative => ai + "ka" ; 
        -- NF Sg illative => ai + "kasõ" ; 
        -- NF Pl illative => ai + "koisõ" ; 
        -- NF Sg inessive => ai + "gõz" ; 
        -- NF Pl inessive => ai + "koiz" ; 
        -- NF Sg elative => ai + "gõssõ" ; 
        -- NF Pl elative => ai + "koissõ" ; 
        -- NF Sg allative => ai + "gõllõ" ; 
        -- NF Pl allative => ai + "koillõ" ; 
        -- NF Sg adessive => ai + "gõl" ; 
        -- NF Pl adessive => ai + "koil" ; 
        -- NF Sg ablative => ai + "gõltõ" ; 
        -- NF Pl ablative => ai + "koiltõ" ; 
        -- NF Sg translative => ai + "gõssi" ; 
        -- NF Pl translative => ai + "koissi" ; 
        -- NF Sg terminative => ai + "kassaa" ; 
        -- NF Pl terminative => ai + "koissaa" ; 
        -- NF Sg comitative => ai + "gaka" ; 
        -- NF Pl comitative => ai + "koika"
      -- }
    -- } ;


-- -------------------------

  -- mkAmmõz : Str -> Noun = \ammõz -> 
    -- case ammõz of {
      -- am + "mõz" => mkAmmõzConcrete am ; 
      -- _ => Predef.error "Unsuitable lemma for mkAmmõz"
    -- } ;

  -- mkAmmõzConcrete : Str -> Noun = \am -> 
    -- { s = 
      -- table {
        -- NF Sg nominative => am + "mõz" ; 
        -- NF Pl nominative => am + "pad" ; 
        -- NF Sg genitive => am + "pa" ; 
        -- NF Pl genitive => am + "paijõ" ; 
        -- NF Sg partitive => am + "massõ" ; 
        -- NF Pl partitive => am + "paitõ" ; 
        -- NF Sg illative => am + "pasõ" ; 
        -- NF Pl illative => am + "paisõ" ; 
        -- NF Sg inessive => am + "paz" ; 
        -- NF Pl inessive => am + "paiz" ; 
        -- NF Sg elative => am + "passõ" ; 
        -- NF Pl elative => am + "paissõ" ; 
        -- NF Sg allative => am + "pallõ" ; 
        -- NF Pl allative => am + "paillõ" ; 
        -- NF Sg adessive => am + "pal" ; 
        -- NF Pl adessive => am + "pail" ; 
        -- NF Sg ablative => am + "paltõ" ; 
        -- NF Pl ablative => am + "pailtõ" ; 
        -- NF Sg translative => am + "passi" ; 
        -- NF Pl translative => am + "paissi" ; 
        -- NF Sg terminative => am + "passaa" ; 
        -- NF Pl terminative => am + "paissaa" ; 
        -- NF Sg comitative => am + "paka" ; 
        -- NF Pl comitative => am + "paika"
      -- }
    -- } ;


-------------------------

  mkTüttö : Str -> Noun = \tüttö -> 
    case tüttö of {
      tüt + "t" + ö => mkTüttöConcrete tüt ö ; 
      _ => Predef.error "Unsuitable lemma for mkTüttö"
    } ;

  mkTüttöConcrete : Str -> Str -> Noun = \tüt,ö -> 
    { s = 
      table {
        NF Sg nominative => tüt + "t" + ö ; 
        NF Pl nominative => tüt + ö + "d" ; 
        NF Sg genitive => tüt + ö ; 
        NF Pl genitive => tüt + "t" + ö + "i" -- ;
        -- NF Pl genitive => tüt + "t" + ö + "je" ; 
        -- NF Sg partitive => tüt + "t" + ö + "ä" ; 
        -- NF Pl partitive => tüt + "t" + ö + "i" ; 
        -- NF Pl partitive => tüt + "t" + ö + "ite" ; 
        -- NF Sg illative => tüt + "t" + ö + "se" ; 
        -- NF Pl illative => tüt + "t" + ö + "ise" ; 
        -- NF Sg inessive => tüt + "t" + ö + "z" ; 
        -- NF Pl inessive => tüt + "t" + ö + "iz" ; 
        -- NF Sg elative => tüt + ö + "sse" ; 
        -- NF Pl elative => tüt + "t" + ö + "isse" ; 
        -- NF Sg allative => tüt + ö + "lle" ; 
        -- NF Pl allative => tüt + "t" + ö + "ille" ; 
        -- NF Sg adessive => tüt + ö + "l" ; 
        -- NF Pl adessive => tüt + "t" + ö + "il" ; 
        -- NF Sg ablative => tüt + ö + "lte" ; 
        -- NF Pl ablative => tüt + "t" + ö + "ilte" ; 
        -- NF Sg translative => tüt + ö + "ssi" ; 
        -- NF Pl translative => tüt + "t" + ö + "issi" ; 
        -- NF Sg terminative => tüt + "t" + ö + "ssaa" ; 
        -- NF Pl terminative => tüt + "t" + ö + "issaa" ; 
        -- NF Sg comitative => tüt + ö + "ka" ; 
        -- NF Pl comitative => tüt + "t" + ö + "ika"
      }
    } ;


-------------------------


}

-- i -retain ResVot.gf
-- cc -table -unqual mkNoun "eousth"

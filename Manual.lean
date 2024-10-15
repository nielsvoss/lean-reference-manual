import VersoManual

import Manual.Intro
import Manual.Elaboration
import Manual.Language
import Manual.Terms
import Manual.Tactics
import Manual.Simp
import Manual.BuiltInTypes

open Verso.Genre Manual

set_option pp.rawOnError true

#doc (Manual) "The Lean Language Reference" =>

%%%
authors := ["Lean Developers"]
%%%

{include Manual.Intro}

{include Manual.Elaboration}

{include Manual.Language}

{include Manual.Terms}

# Monads and `do`-Notation

# IO

{include 0 Manual.Tactics}

{include 0 Manual.Simp}

{include 0 Manual.BuiltInTypes}

# Notations and Macros
%%%
tag := "language-extension"
%%%

## Notations

:::planned
A presentation of the `notation` command and how to define infix operators
:::

## Syntax Categories and Extensions

:::planned
 * Syntax extension and syntax categories
   * Precedence
:::


## Macros
%%%
tag := "macros"
%%%

:::planned
 * Definition of {deftech}_macro_
 * `macro_rules`
   * Syntax patterns
   * Backtracking on expansion failure
 * {deftech}[Hygiene] and quotation
 * The `macro` command
:::


## Elaborators
%%%
tag := "elaborators"
%%%

:::planned
For now, a quick overview of elaborators - detailed description to be written in a later revision
:::

# Lake and Reservoir


# Index
%%%
number := false
file := some "the-index"
%%%

{theIndex}



::::::draft

:::progress
```namespace
String Char Nat Lean.Elab.Tactic
```
```exceptions
String.revFindAux String.extract.go₂ String.substrEq.loop String.casesOn
String.offsetOfPosAux String.extract.go₁ String.mapAux String.firstDiffPos.loop String.utf8SetAux String.revPosOfAux String.replace.loop
String.rec String.recOn String.posOfAux String.splitAux String.foldrAux
String.splitOnAux String.intercalate.go String.anyAux String.findAux
String.utf8GetAux? String.foldlAux String.utf8GetAux
String.utf8PrevAux String.noConfusionType String.noConfusion
String.utf8ByteSize.go String.validateUTF8.loop
String.crlfToLf.go
String.fromUTF8.loop
String.one_le_csize
```

```exceptions
String.sluggify
```

```exceptions
Nat.anyM.loop
Nat.nextPowerOfTwo.go
Nat.foldRevM.loop
Nat.foldM.loop
Nat.foldTR.loop
Nat.recAux
Nat.allTR.loop
Nat.allM.loop
Nat.anyTR.loop
Nat.anyM.loop
Nat.toSuperDigitsAux
Nat.casesAuxOn
Nat.forM.loop
Nat.repeatTR.loop
Nat.forRevM.loop
Nat.toSubDigitsAux
```

```exceptions
Nat.one_pos
Nat.not_lt_of_lt
Nat.sub_lt_self
Nat.lt_or_gt
Nat.pow_le_pow_left
Nat.not_lt_of_gt
Nat.le_or_le
Nat.le_or_ge
Nat.pred_lt'
Nat.pow_le_pow_right
Nat.lt_iff_le_and_not_ge
Nat.mul_pred_right
Nat.mul_pred_left
Nat.prod_dvd_and_dvd_of_dvd_prod
Nat.lt_iff_le_and_not_ge
Nat.mul_pred_right
```

```exceptions
Nat.binductionOn
Nat.le.rec
Nat.le.recOn
Nat.le.casesOn
Nat.le.below
Nat.le.below.step
Nat.le.below.rec
Nat.le.below.recOn
Nat.le.below.refl
Nat.le.below.casesOn
```

```exceptions
Lean.Elab.Tactic.evalUnfold.go
Lean.Elab.Tactic.dsimpLocation.go
Lean.Elab.Tactic.withCollectingNewGoalsFrom.go
Lean.Elab.Tactic.evalRunTac.unsafe_impl_1
Lean.Elab.Tactic.evalRunTac.unsafe_1
Lean.Elab.Tactic.evalTactic.handleEx
Lean.Elab.Tactic.simpLocation.go
Lean.Elab.Tactic.instToSnapshotTreeTacticParsedSnapshot.go
Lean.Elab.Tactic.dsimpLocation'.go
Lean.Elab.Tactic.withRWRulesSeq.go
Lean.Elab.Tactic.runTermElab.go
Lean.Elab.Tactic.getMainGoal.loop
Lean.Elab.Tactic.elabSimpArgs.isSimproc?
Lean.Elab.Tactic.elabSimpArgs.resolveSimpIdTheorem?
Lean.Elab.Tactic.tactic.dbg_cache
Lean.Elab.Tactic.tactic.simp.trace
Lean.Elab.Tactic.liftMetaTacticAux
```

```exceptions

Lean.Elab.Tactic.elabSetOption
Lean.Elab.Tactic.evalSeq1
Lean.Elab.Tactic.evalSimp
Lean.Elab.Tactic.evalSpecialize
Lean.Elab.Tactic.evalTacticAt
Lean.Elab.Tactic.evalSimpAll
Lean.Elab.Tactic.evalIntro.introStep
Lean.Elab.Tactic.evalDone
Lean.Elab.Tactic.evalRevert
Lean.Elab.Tactic.evalRight
Lean.Elab.Tactic.evalUnfold
Lean.Elab.Tactic.evalConstructor
Lean.Elab.Tactic.evalTacticCDot
Lean.Elab.Tactic.evalTraceMessage
Lean.Elab.Tactic.evalClear
Lean.Elab.Tactic.evalIntroMatch
Lean.Elab.Tactic.evalInduction
Lean.Elab.Tactic.evalApply
Lean.Elab.Tactic.evalUnknown
Lean.Elab.Tactic.evalRefl
Lean.Elab.Tactic.evalTactic.throwExs
Lean.Elab.Tactic.evalDSimp
Lean.Elab.Tactic.evalSepTactics.goEven
Lean.Elab.Tactic.evalAllGoals
Lean.Elab.Tactic.evalSplit
Lean.Elab.Tactic.evalInjection
Lean.Elab.Tactic.evalParen
Lean.Elab.Tactic.evalFocus
Lean.Elab.Tactic.evalLeft
Lean.Elab.Tactic.evalRotateRight
Lean.Elab.Tactic.evalWithReducible
Lean.Elab.Tactic.evalTactic.expandEval
Lean.Elab.Tactic.evalTraceState
Lean.Elab.Tactic.evalCase'
Lean.Elab.Tactic.evalSepTactics.goOdd
Lean.Elab.Tactic.evalWithReducibleAndInstances
Lean.Elab.Tactic.evalTacticSeqBracketed
Lean.Elab.Tactic.evalTactic.eval
Lean.Elab.Tactic.evalAlt
Lean.Elab.Tactic.evalGeneralize
Lean.Elab.Tactic.evalRewriteSeq
Lean.Elab.Tactic.evalSleep
Lean.Elab.Tactic.evalDSimpTrace
Lean.Elab.Tactic.evalReplace
Lean.Elab.Tactic.evalOpen
Lean.Elab.Tactic.evalAssumption
Lean.Elab.Tactic.evalSepTactics
Lean.Elab.Tactic.evalWithUnfoldingAll
Lean.Elab.Tactic.evalMatch
Lean.Elab.Tactic.evalRepeat1'
Lean.Elab.Tactic.evalFailIfSuccess
Lean.Elab.Tactic.evalRename
Lean.Elab.Tactic.evalFirst.loop
Lean.Elab.Tactic.evalSimpTrace
Lean.Elab.Tactic.evalFirst
Lean.Elab.Tactic.evalSubstVars
Lean.Elab.Tactic.evalRunTac
Lean.Elab.Tactic.evalSymmSaturate
Lean.Elab.Tactic.evalWithAnnotateState
Lean.Elab.Tactic.evalTacticAtRaw
Lean.Elab.Tactic.evalDbgTrace
Lean.Elab.Tactic.evalSubst
Lean.Elab.Tactic.evalNativeDecide
Lean.Elab.Tactic.evalCalc
Lean.Elab.Tactic.evalCase
Lean.Elab.Tactic.evalRepeat'
Lean.Elab.Tactic.evalRefine
Lean.Elab.Tactic.evalContradiction
Lean.Elab.Tactic.evalSymm
Lean.Elab.Tactic.evalInjections
Lean.Elab.Tactic.evalExact
Lean.Elab.Tactic.evalRotateLeft
Lean.Elab.Tactic.evalFail
Lean.Elab.Tactic.evalTactic
Lean.Elab.Tactic.evalSimpAllTrace
Lean.Elab.Tactic.evalRefine'
Lean.Elab.Tactic.evalChoice
Lean.Elab.Tactic.evalInduction.checkTargets
Lean.Elab.Tactic.evalIntro
Lean.Elab.Tactic.evalAnyGoals
Lean.Elab.Tactic.evalCases
Lean.Elab.Tactic.evalDelta
Lean.Elab.Tactic.evalDecide
Lean.Elab.Tactic.evalChoiceAux
Lean.Elab.Tactic.evalTacticSeq
Lean.Elab.Tactic.evalCheckpoint
Lean.Elab.Tactic.evalRenameInaccessibles
Lean.Elab.Tactic.evalIntros
Lean.Elab.Tactic.evalApplyLikeTactic
Lean.Elab.Tactic.evalSkip
Lean.Elab.Tactic.evalCalc.throwFailed
Lean.Elab.Tactic.evalSubstEqs
Lean.Elab.Tactic.evalTacticSeq1Indented
```

```exceptions
List.tacticSizeOf_list_dec
Lean.Parser.Tactic.tacticRefine_lift_
Lean.Parser.Tactic.tacticRefine_lift'_
Array.tacticArray_mem_dec
Lean.Parser.Tactic.normCast0
tacticClean_wf
Lean.Parser.Tactic.nestedTactic
Lean.Parser.Tactic.unknown
Lean.Parser.Tactic.paren
tacticDecreasing_trivial_pre_omega
```

:::

::::::

module Main where
import qualified Data.Set as Set
import qualified Inference as Infer

decl1 = Fn f (PatVar x) (App (App (ExpVar x) (ExpVar +)) (IntExp 1)) 
	
Infer.freeVars decl1


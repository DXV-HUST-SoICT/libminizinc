#include <minizinc/solvers/nl/nl_segments.hh>
#include <minizinc/solvers/nl/nl_file.hh>

namespace MiniZinc {

    // Print a constraint 'C' segment
    ostream& NLS_LSeg::print_on(ostream& os) const {

        os  << "L" << constraint_idx << " # Constraint " << constraint_idx << endl;    

        for(auto &tok : expression_graph){
            os << tok << endl; 
        }

        return os;
    }
  
}
import React from 'react';
import ReactDOM from 'react-dom';
import './index.<%= preprocessor %>'

const <%= pageName %>Page = (): JSX.Element => {
  return (
    <>
      It works!
    </>
  );
};

export default <%= pageName %>Page

ReactDOM.render(<<%= pageName %>Page />, document.getElementById('<%= entryPoint %>'));
